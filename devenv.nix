{ pkgs, lib, ... }:

let
  platformArchives = {
    "aarch64-darwin" = {
      go = "go1.26.5.darwin-arm64.tar.gz";
      goHash = "sha256-77h/8or5oYjQU2711C5j3VK6gmPNc0Spk8xI3RHe22o=";
      dart = "dartsdk-macos-arm64-release.zip";
      dartHash = "sha256-IjJFpC6rG4EeUC4VYluGcHX/4BLenrU3Skzd4u4IdTQ=";
      pulumi = "pulumi-v3.225.1-darwin-arm64.tar.gz";
      pulumiHash = "sha256-2scwrh9uJZd7S9nKIv+2YI3e0V+21fEr15L/HaXtJlE=";
    };
    "x86_64-linux" = {
      go = "go1.26.5.linux-amd64.tar.gz";
      goHash = "sha256-XCw7FsrvodloqUwdrKBKfKMBpJbZsIbhetd7uBOT8FM=";
      dart = "dartsdk-linux-x64-release.zip";
      dartHash = "sha256-8xcptWe+MYx8wjva/muamX+n3b+CnfUBbwZiJ7aqDJk=";
      pulumi = "pulumi-v3.225.1-linux-x64.tar.gz";
      pulumiHash = "sha256-Y3zaZLkUYERVvtSzN07kOZfiu/pux6w8xJ5oM1mSq3k=";
    };
  };
  platform = platformArchives.${pkgs.stdenv.hostPlatform.system}
    or (throw "pulumi-dart devenv does not support ${pkgs.stdenv.hostPlatform.system}");
  goPackage = pkgs.stdenvNoCC.mkDerivation {
    pname = "go";
    version = "1.26.5";
    src = pkgs.fetchurl {
      url = "https://go.dev/dl/${platform.go}";
      hash = platform.goHash;
    };
    sourceRoot = "go";
    installPhase = ''
      runHook preInstall
      mkdir -p "$out"
      cp -R . "$out/"
      runHook postInstall
    '';
  };
  dartPackage = pkgs.stdenvNoCC.mkDerivation {
    pname = "dart-sdk";
    version = "3.11.0";
    src = pkgs.fetchurl {
      url = "https://storage.googleapis.com/dart-archive/channels/stable/release/3.11.0/sdk/${platform.dart}";
      hash = platform.dartHash;
    };
    nativeBuildInputs = [ pkgs.unzip ];
    sourceRoot = "dart-sdk";
    installPhase = ''
      runHook preInstall
      mkdir -p "$out"
      cp -R . "$out/"
      runHook postInstall
    '';
  };
  # Keep the lightweight binary packaging from nixpkgs, but pin the CLI to the
  # version used by this branch instead of pulling pulumi-bin's current CLI and
  # full provider-plugin bundle.
  pulumiPackage = pkgs.pulumi-bin.overrideAttrs (_: {
    version = "3.225.1";
    postUnpack = "";
    srcs = [
      (pkgs.fetchurl {
        url = "https://github.com/pulumi/pulumi/releases/download/v3.225.1/${platform.pulumi}";
        hash = platform.pulumiHash;
      })
    ];
  });
in
{
  packages = [
    goPackage
    dartPackage
    pulumiPackage
    pkgs.git
    pkgs.protobuf
    pkgs.nodejs_22
    pkgs.pnpm
    pkgs.uv
  ];

  scripts.repodoc.exec = ''
    set -eu
    repo_root="$DEVENV_ROOT"
    binary_dir="$DEVENV_STATE/repodoc/bin"
    binary="$binary_dir/repodoc"
    rebuild=false

    if [ ! -x "$binary" ]; then
      rebuild=true
    elif [ -n "$(find "$repo_root/repodoc/bin" "$repo_root/repodoc/lib" -type f -newer "$binary" -print -quit)" ]; then
      rebuild=true
    else
      for dependency_file in \
        "$repo_root/pubspec.yaml" \
        "$repo_root/pubspec.lock" \
        "$repo_root/repodoc/pubspec.yaml"; do
        if [ "$dependency_file" -nt "$binary" ]; then
          rebuild=true
          break
        fi
      done
    fi

    if [ "$rebuild" = true ]; then
      mkdir -p "$binary_dir"
      echo "Compiling repodoc…" >&2
      (cd "$repo_root" && dart compile exe repodoc/bin/repodoc.dart -o "$binary" >&2)
    fi

    exec "$binary" "$@"
  '';

  scripts.integration-check.exec = ''
    set -eu
    echo "Go: $(go version)"
    echo "Dart: $(dart --version 2>&1)"
    echo "Pulumi: $(pulumi version)"
    echo "Node: $(node --version)"
    echo "pnpm: $(pnpm --version)"
    echo "uv: $(uv --version)"
  '';

  scripts.language-host-unit-test.exec = ''
    set -eu
    cd pulumi-language-dart
    go test -count=1 -skip '^TestLanguageConformance$' . ./dartpub/...
  '';

  scripts.language-codegen-test.exec = ''
    set -eu
    cd pulumi-language-dart
    go test -count=1 ./codegen/...
  '';

  scripts.language-conformance-test.exec = ''
    set -eu
    cd pulumi-language-dart
    go test -count=1 -run '^TestLanguageConformance$' -v \
      -timeout "''${PULUMI_DART_CONFORMANCE_SUITE_TIMEOUT:-25m}" .
  '';

  scripts.integration-build-host.exec = ''
    set -eu
    cd pulumi-language-dart
    go build -buildvcs=false -o pulumi-language-dart .
  '';

  scripts.integration-test-empty.exec = ''
    set -eu
    cd integration_tests
    export GOFLAGS="''${GOFLAGS:+$GOFLAGS }-buildvcs=false"
    export PULUMI_SKIP_UPDATE_CHECK=true
    export PULUMI_CONFIG_PASSPHRASE=pulumi-dart-test-passphrase
    go test -count=1 -run '^TestEmptyDart$' -v -timeout=10m .
  '';

  scripts.integration-test.exec = ''
    set -eu
    if [ ! -d thirdparty/pulumi/tests/testprovider ]; then
      echo "Missing thirdparty/pulumi/tests/testprovider." >&2
      echo "Initialize it before running the full suite:" >&2
      echo "  git submodule update --init --depth 1 thirdparty/pulumi" >&2
      exit 1
    fi

    integration-build-host
    export PATH="$PWD/pulumi-language-dart:$PATH"
    cd integration_tests
    export GOFLAGS="''${GOFLAGS:+$GOFLAGS }-buildvcs=false"
    export PULUMI_SKIP_UPDATE_CHECK=true
    export PULUMI_CONFIG_PASSPHRASE="''${PULUMI_CONFIG_PASSPHRASE:-pulumi-dart-test-passphrase}"

    test_pattern="''${INTEGRATION_TESTS:-.}"
    test_timeout="''${INTEGRATION_TIMEOUT:-60m}"
    test_parallel="''${INTEGRATION_PARALLEL:-4}"
    go test -count=1 -run "$test_pattern" -v \
      -timeout="$test_timeout" -parallel="$test_parallel" .
  '';

  scripts.integration-prewarm.exec = ''
    set -eu
    integration-build-host
    dart pub get
    dart run repodoc integration:prewarm \
      --root integration_tests \
      --output .local-prewarm \
      --language-host "$PWD/pulumi-language-dart/pulumi-language-dart" \
      --dart-sdk-version 3.11.0 \
      --jobs "''${PREWARM_JOBS:-4}"

    echo "Prewarm artifacts: $PWD/.local-prewarm"
  '';

  scripts.integration-ci-prepare.exec = ''
    set -eu
    artifact_root="$PWD/.integration-ci"
    rm -rf "$artifact_root"
    mkdir -p "$artifact_root/bin"

    dart pub get
    dart compile exe repodoc/bin/repodoc_integration.dart -o "$artifact_root/bin/repodoc"
    (cd pulumi-language-dart && go build -buildvcs=false -o "$artifact_root/bin/pulumi-language-dart" .)
    (cd integration_tests && GOFLAGS=-buildvcs=false go test -c \
      -o "$artifact_root/bin/pulumi-dart-integration-tests" .)

    "$artifact_root/bin/repodoc" integration:prewarm \
      --root integration_tests \
      --output "$artifact_root/prewarm" \
      --language-host "$artifact_root/bin/pulumi-language-dart" \
      --dart-sdk-version 3.11.0 \
      --jobs "''${PREWARM_JOBS:-4}"
    "$artifact_root/bin/repodoc" integration:matrix \
      --package-dir integration_tests \
      --binary "$artifact_root/bin/pulumi-dart-integration-tests" \
      --partitions "''${INTEGRATION_PARTITIONS:-8}" > "$artifact_root/matrix.json"
  '';

  scripts.integration-ci-run.exec = ''
    set -eu
    artifact_root="$PWD/.integration-ci"
    test -n "''${INTEGRATION_TESTS:-}" || {
      echo "INTEGRATION_TESTS is required" >&2
      exit 1
    }
    chmod +x "$artifact_root/bin/"*
    export PATH="$artifact_root/bin:$PATH"
    export PULUMI_DART_PREWARM_CACHE="$artifact_root/prewarm"
    export PULUMI_SKIP_UPDATE_CHECK=true
    export PULUMI_CONFIG_PASSPHRASE="''${PULUMI_CONFIG_PASSPHRASE:-pulumi-dart-test-passphrase}"
    "$artifact_root/bin/repodoc" integration:run \
      --package-dir integration_tests \
      --binary "$artifact_root/bin/pulumi-dart-integration-tests" \
      --tests "$INTEGRATION_TESTS" \
      --timeout "''${INTEGRATION_TIMEOUT:-60m}" \
      --parallel "''${INTEGRATION_PARALLEL:-4}"
  '';
}
