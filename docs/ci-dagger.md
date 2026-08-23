# Dagger CI migration

The integration workflow is the first Pulumi Dart CI surface moved to Dagger.
The migration intentionally starts with the slowest and most fragmented part of
CI before the remaining repository checks are moved.

## Current architecture

The GitHub workflow is now a thin Dagger launcher. Dagger owns the integration
toolchain and pins the versions of Dart, Go, Node.js, Python/uv, and the Pulumi
CLI in `tool/dagger/main.go`.

The prepare phase compiles three artifacts once:

- `pulumi-dart-tool`, the repository's Dart command-line tool;
- `pulumi-language-dart`, the language host;
- `pulumi-dart-integration-tests`, a single Go test binary containing the
  integration suite.

The compiled Dart tool discovers tests from the precompiled Go test binary and
emits the GitHub matrix. Each matrix entry normally invokes that test binary
once with a combined `-test.run` expression. Tests that intentionally exercise
process shutdown semantics are kept in a small isolation catalog and receive a
fresh process while still reusing the same precompiled binary. This replaces
the previous Python runner, which launched a fresh `go test` process for every
individual test.

All repository orchestration introduced by this migration lives under `tool/`:

```text
tool/
├── pulumi_dart.dart       # repository CLI; compiled before use in CI
└── dagger/
    ├── go.mod             # thin Dagger API client
    └── main.go            # reproducible CI containers and execution
```

Dagger does not currently provide a Dart SDK, so the Dagger integration is a
small Go custom application. Repository-specific behavior remains in Dart; the
Go layer is limited to constructing containers, caches, artifacts, and secrets.

## Running locally

Install Dagger and use the same commands as CI. The `--` separator ensures
Dagger forwards subsequent flags, such as Go's `-mod=readonly`, to the command
instead of parsing them as Dagger options.

```console
cd tool/dagger
dagger run -- go run -mod=readonly . prepare --source ../.. --output ../../.dagger-ci
dagger run -- go run -mod=readonly . integration \
  --source ../.. \
  --artifacts ../../.dagger-ci \
  --tests TestEmptyDart
```

Set `PULUMI_ACCESS_TOKEN` and pass `--cloud` when running cloud-only tests.

## Next phase: Dart program prewarming

This first slice removes repeated Go test compilation and process startup. The
next slice will address repeated Dart frontend compilation inside Pulumi's
`ProgramTest` temporary directories:

1. Discover static Dart integration projects and all edit-step variants.
2. Resolve each entrypoint and produce a portable content fingerprint.
3. Run `dart pub get` once per unique source package in the Dagger prepare
   phase.
4. Compile content-addressed kernel snapshots (`.dill`) and direct Automation
   API drivers.
5. Emit a manifest that maps project fingerprints to prepared artifacts.
6. Teach `pulumi-language-dart` to resolve the manifest before its existing
   per-project compile cache, with strict cache-miss behavior in CI.
7. Retain source execution only for tests that intentionally exercise project
   generation or compiler behavior.

The manifest and kernels will be added to the same prepared artifact directory,
so the workflow shape introduced here does not need another redesign.

## Remaining CI migration

After integration prewarming is stable, the protobuf, provider-generation,
schema-drift, unit-test, documentation, and release checks can move into the
same Dagger client. At that point the Makefile, Taskfile, Python partitioner,
and shell installer can be removed after their remaining responsibilities have
Dart command equivalents under `tool/`.
