GO := go
PROTOC := protoc
DART_OUT_DIR := packages/pulumi-dart/lib/src/pulumirpc
PULUMI_REPO := https://github.com/pulumi/pulumi.git
PULUMI_DIR := thirdparty/pulumi
PULUMI_PROTO_DIR := $(PULUMI_DIR)/proto
PROTOBUF_REPO := https://github.com/protocolbuffers/protobuf.git
PROTOBUF_DIR := .protobuf
PULUMI_VERSION ?= v3.257.0
PROTOC_PLUGIN_VERSION ?= 25.0.0

install::
	dart pub global activate protoc_plugin ${PROTOC_PLUGIN_VERSION}
	cd pulumi-language-dart && ${GO} install ./...

submodules::
	git submodule update --init --recursive

pin-pulumi-submodule::
	cd $(PULUMI_DIR) && git fetch --tags && git checkout ${PULUMI_VERSION}

build::
	cd pulumi-language-dart && ${GO} build .

ensure-pulumi-proto:
	@command -v git >/dev/null 2>&1 || { echo >&2 "git is required but not installed. Aborting."; exit 1; }
	@if [ ! -d "$(PULUMI_PROTO_DIR)" ]; then \
		if [ -d "$(PULUMI_DIR)" ]; then \
			echo "Expected $(PULUMI_PROTO_DIR), but it was not found." >&2; \
			echo "Please initialize/update the pulumi repo checkout in $(PULUMI_DIR)." >&2; \
			exit 1; \
		fi; \
		echo "Cloning pulumi repository into $(PULUMI_DIR)..."; \
		git clone --depth 1 $(PULUMI_REPO) $(PULUMI_DIR); \
	fi

ensure-protobuf-sources:
	@command -v git >/dev/null 2>&1 || { echo >&2 "git is required but not installed. Aborting."; exit 1; }
	@if [ ! -d "$(PROTOBUF_DIR)/src/google/protobuf" ]; then \
		if [ -d "$(PROTOBUF_DIR)" ]; then \
			echo "Expected $(PROTOBUF_DIR)/src/google/protobuf, but it was not found." >&2; \
			echo "Please re-clone $(PROTOBUF_DIR) or remove it and rerun." >&2; \
			exit 1; \
		fi; \
		echo "Cloning protobuf repository into $(PROTOBUF_DIR)..."; \
		git clone --depth 1 $(PROTOBUF_REPO) $(PROTOBUF_DIR); \
	fi

clean-generated-proto:
	@mkdir -p ${DART_OUT_DIR}
	@rm -rf ${DART_OUT_DIR}/pulumi ${DART_OUT_DIR}/google

generate::
	@command -v protoc >/dev/null 2>&1 || { echo >&2 "protoc is required but not installed. Aborting."; exit 1; }
	@command -v dart >/dev/null 2>&1 || { echo >&2 "dart is required but not installed. Aborting."; exit 1; }
	@$(MAKE) ensure-pulumi-proto
	@$(MAKE) ensure-protobuf-sources
	@$(MAKE) clean-generated-proto
	mkdir -p ${DART_OUT_DIR}
	${PROTOC} \
		--proto_path=$(PULUMI_PROTO_DIR) \
		--proto_path=$(PROTOBUF_DIR)/src \
		--dart_out=grpc:${DART_OUT_DIR} \
		$(PULUMI_PROTO_DIR)/pulumi/*.proto \
		$(PULUMI_PROTO_DIR)/pulumi/codegen/*.proto \
		$(PULUMI_PROTO_DIR)/pulumi/testing/*.proto \
		$(PULUMI_PROTO_DIR)/google/protobuf/status.proto
	${PROTOC} \
		--proto_path=$(PROTOBUF_DIR)/src \
		--dart_out=grpc:${DART_OUT_DIR} \
		$(PROTOBUF_DIR)/src/google/protobuf/any.proto \
		$(PROTOBUF_DIR)/src/google/protobuf/duration.proto \
		$(PROTOBUF_DIR)/src/google/protobuf/empty.proto \
		$(PROTOBUF_DIR)/src/google/protobuf/struct.proto \
		$(PROTOBUF_DIR)/src/google/protobuf/timestamp.proto

	@dart format ${DART_OUT_DIR}
	@echo "Pulumi protos generated successfully in ${DART_OUT_DIR}."

regenerate-stubs: generate
	@echo "regenerate-stubs is deprecated; ran 'make generate'."


install2:
	cd pulumi-language-dart && go install

test-empty: install2

	cd integration_tests && PULUMI_LOG_VERBOSE=9 go test -run TestEmptyDart

.PHONY: install submodules pin-pulumi-submodule build ensure-pulumi-proto ensure-protobuf-sources clean-generated-proto generate regenerate-stubs
