.PHONY: build
build:
	cargo build --target wasm32-unknown-unknown --release

.PHONY: codegen
codegen:
	substreams protogen ./substreams.yaml --exclude-paths="sf/ethereum,sf/substreams,google"
