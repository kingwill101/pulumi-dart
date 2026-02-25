GO := go
PROTOC := protoc
DART_OUT_DIR := pulumi-dart/lib/src/pulumirpc
PULUMI_VERSION ?= v3.223.0
PROTOC_PLUGIN_VERSION ?= 25.0.0

PROTOBUF_REPO := https://github.com/protocolbuffers/protobuf.git
GOOGLEAPIS_REPO := https://github.com/googleapis/googleapis.git
PROTOBUF_DIR := .protobuf
GOOGLEAPIS_DIR := .googleapis

install::
	dart pub global activate protoc_plugin ${PROTOC_PLUGIN_VERSION}
	cd pulumi-language-dart && ${GO} install ./...

submodules::
	git submodule update --init --recursive

pin-pulumi-submodule::
	cd pulumi && git fetch --tags && git checkout ${PULUMI_VERSION}

build::
	cd pulumi-language-dart && ${GO} build .

generate::
	@command -v protoc >/dev/null 2>&1 || { echo >&2 "protoc is required but not installed. Aborting."; exit 1; }
	@command -v dart >/dev/null 2>&1 || { echo >&2 "dart is required but not installed. Aborting."; exit 1; }
	@if [ ! -d "$(GOOGLEAPIS_DIR)" ]; then \
		echo "Google APIs repository is missing. Running regenerate-stubs first."; \
		$(MAKE) regenerate-stubs; \
	fi
	mkdir -p ${DART_OUT_DIR}
	${PROTOC} \
		--proto_path=proto \
		--proto_path=$(GOOGLEAPIS_DIR) \
		--dart_out=grpc:${DART_OUT_DIR} \
		proto/pulumi/*.proto \
		proto/pulumi/codegen/*.proto \
		proto/pulumi/testing/*.proto

	@dart format ${DART_OUT_DIR}
	@echo "Pulumi protos generated successfully in ${DART_OUT_DIR}."

regenerate-stubs:
	@command -v protoc >/dev/null 2>&1 || { echo >&2 "protoc is required but not installed. Aborting."; exit 1; }
	@command -v dart >/dev/null 2>&1 || { echo >&2 "dart is required but not installed. Aborting."; exit 1; }
	@command -v git >/dev/null 2>&1 || { echo >&2 "git is required but not installed. Aborting."; exit 1; }

	@if [ ! -d "$(PROTOBUF_DIR)" ]; then \
		echo "Cloning protobuf repository..."; \
		git clone $(PROTOBUF_REPO) $(PROTOBUF_DIR); \
	else \
		echo "Updating protobuf repository..."; \
		cd $(PROTOBUF_DIR) && git pull; \
	fi

	@if [ ! -d "$(GOOGLEAPIS_DIR)" ]; then \
		echo "Cloning googleapis repository..."; \
		git clone $(GOOGLEAPIS_REPO) $(GOOGLEAPIS_DIR); \
	else \
		echo "Updating googleapis repository..."; \
		cd $(GOOGLEAPIS_DIR) && git pull; \
	fi

	@mkdir -p ${DART_OUT_DIR}
	@PROTOC="protoc --dart_out=grpc:${DART_OUT_DIR} -I$(PROTOBUF_DIR)/src -I$(GOOGLEAPIS_DIR)"; \
	$$PROTOC $(GOOGLEAPIS_DIR)/google/api/label.proto; \
	$$PROTOC $(GOOGLEAPIS_DIR)/google/rpc/status.proto; \
	$$PROTOC $(PROTOBUF_DIR)/src/google/protobuf/any.proto; \
	$$PROTOC $(PROTOBUF_DIR)/src/google/protobuf/empty.proto; \
	$$PROTOC $(PROTOBUF_DIR)/src/google/protobuf/struct.proto; \
	$$PROTOC $(PROTOBUF_DIR)/src/google/protobuf/timestamp.proto

	@dart format ${DART_OUT_DIR}
	@echo "gRPC stubs regenerated successfully in ${DART_OUT_DIR}."


install2:
	cd pulumi-language-dart && go install

test-empty: install2

	cd integration_tests && PULUMI_LOG_VERBOSE=9 go test -run TestEmptyDart

.PHONY: install submodules pin-pulumi-submodule build generate regenerate-stubs
