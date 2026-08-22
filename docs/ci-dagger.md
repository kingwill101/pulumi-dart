# Dagger CI migration

The integration workflow is the first Pulumi Dart CI surface moved to Dagger.
The migration intentionally starts with the slowest and most fragmented part of
CI before the remaining repository checks are moved.

## Current architecture

The GitHub workflow is a thin Dagger launcher. Dagger owns the integration
toolchain and pins the versions of Dart, Go, Node.js, Python/uv, and the Pulumi
CLI in `tool/dagger/main.go`.

The prepare phase compiles the reusable CI tooling once:

- `pulumi-dart-tool`, the repository's Dart command-line tool;
- `pulumi-language-dart`, the language host;
- `pulumi-dart-integration-tests`, a single Go test binary containing the
  integration suite;
- one generic native launcher used to execute all content-addressed Dart kernel
  snapshots.

The Dart tool discovers tests from the precompiled Go test binary and emits the
GitHub matrix. Each matrix entry normally invokes that test binary once with a
combined `-test.run` expression. Tests that intentionally exercise process
shutdown semantics are kept in a small isolation catalog and receive a fresh
process while still reusing the same precompiled binary.

All repository orchestration introduced by this migration lives under `tool/`:

```text
tool/
├── pulumi_dart.dart       # repository CLI; compiled before use in CI
├── kernel_launcher.dart   # one native launcher for all .dill artifacts
├── src/
│   └── integration_prewarm.dart
└── dagger/
    ├── go.mod             # thin Dagger API client
    └── main.go            # reproducible CI containers and execution
```

Dagger does not currently provide a Dart SDK, so the Dagger integration is a
small Go custom application. Repository-specific behavior remains in Dart; the
Go layer is limited to constructing containers, caches, artifacts, and secrets.

## Dart program prewarming

During Dagger preparation, the Dart tool scans static integration fixtures and
Automation API drivers, resolves concrete entrypoints, runs dependency
resolution once per unique source package, and compiles content-addressed
kernel snapshots in parallel.

The portable fingerprint includes:

- the concrete entrypoint;
- the Dart SDK and compiler mode;
- normalized project metadata and project Dart sources;
- the actual source contents of local `pulumi` and `pulumi_*` dependencies
  resolved through `.dart_tool/package_config.json`.

The artifact bundle contains:

```text
prewarm/
├── manifest.json
├── kernels/<fingerprint>.dill
└── bin/pulumi-dart-kernel-launcher
```

Before a matrix partition starts, `integration apply-prewarm` rewrites eligible
scalar `runtime: dart` project declarations in the Dagger source snapshot to
use the single prepared launcher through `runtime.options.binary`. It also
writes `.pulumi-dart-kernel` into the concrete program directory. ProgramTest
copies that marker with the fixture; at execution time the launcher reads it,
selects the corresponding kernel, and starts `dart run` while retaining the
copied Pulumi project as the working directory.

Consequently, the language host skips both dependency-time cache warming and
run-time native compilation for eligible projects without requiring a protocol
change in this first slice.

The initial implementation deliberately retains source fallback for:

- projects with edit/step directories;
- generated projects;
- projects with non-scalar runtime declarations;
- fixtures whose dependency resolution or kernel compilation fails;
- ambiguous entrypoints.

Every fallback is recorded in `manifest.json`. Coverage can therefore be
expanded incrementally without risking incorrect reuse of a base artifact after
an edit step. Strict miss enforcement is intentionally deferred until the
manifest establishes a stable expected-prewarmable catalog.

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

## Next prewarming steps

1. Model edit-directory overlays and compile each resulting program state.
2. Move direct Automation API driver invocation to the manifest artifacts.
3. Add timing and hit-rate reporting to the GitHub job summary.
4. Enable strict misses for the catalog of fixtures expected to prewarm.
5. Replace the launcher-based runtime option with direct language-host manifest
   resolution once the portable fingerprint contract is stable.

## Remaining CI migration

After integration prewarming is stable, the protobuf, provider-generation,
schema-drift, unit-test, documentation, and release checks can move into the
same Dagger client. At that point the Makefile, Taskfile, Python partitioner,
and shell installer can be removed after their remaining responsibilities have
Dart command equivalents under `tool/`.
