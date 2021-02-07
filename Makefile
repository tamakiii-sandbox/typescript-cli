.PHONY: help setup dependencies build watch install clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies \
	install

dependencies:
	type node
	type npm

install: \
	node_modules

build:
	npx --no-install tsc

watch:
	npx --no-install tsc --watch

node_modules:
	npm install

clean:
	rm -rf node_modules
