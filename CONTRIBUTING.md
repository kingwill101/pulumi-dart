# Contributing To Pulumi Dart

This guide is for contributors working on the language host, core SDK, and provider generation workflow.

## Prerequisites

- Go
- Dart SDK
- Pulumi CLI
- GitHub CLI (`gh`), authenticated for `repodoc upstream:check`
- `jq`
- `curl`
- `task` (Taskfile runner)

Initialize submodules:

```bash
git submodule update --init --recursive
```

## Helper Files

Use these as the source of truth for contributor workflows:

- `Taskfile.yml`: primary command entrypoint for setup, generation, smoke tests, and checks
- `packages/README.md`: generated provider package workflow and conventions
- `packages/sdks/schema_sources.json`: provider schema sources and local mapping
- `packages/sdk_dependency_registry.yaml`: cross-provider dependency mapping for generated pubspecs
- `repodoc schema:check`: upstream schema drift detection
- `repodoc upstream:check`: upstream runtime, SDK, codegen, and overlay review
- `scripts/install-pulumi-language-dart.sh`: install script for language host releases
- `website/README.md`: docs site development commands

## Common Workflows

### Core SDK and Host Validation

```bash
cd pulumi-language-dart
go test -count=1 ./...

cd ../pulumi-dart
dart pub get
dart analyze
dart test
```

### Generate Language Conformance Testdata

The canonical conformance test definitions come from the pinned Pulumi
submodule under `thirdparty/pulumi`. The Dart language test runs those
definitions and checks the generated Dart SDKs and programs against snapshots
in `pulumi-language-dart/testdata/published`.

Regenerate the snapshot for one conformance case first:

```bash
devenv shell -- bash -c '
  cd pulumi-language-dart
  PULUMI_ACCEPT=true go test -count=1 -v -timeout=10m \
    -run "^TestLanguageConformance$/^l2-raw-string-bytes$" .
'
```

Replace `l2-raw-string-bytes` with the exact upstream conformance test name.
Review the resulting changes under `pulumi-language-dart/testdata/published`
before accepting them.

After validating an individual case, regenerate snapshots for every supported
case:

```bash
PULUMI_ACCEPT=true devenv shell -- language-conformance-test
```

Run the suite normally afterward to prove the committed snapshots are stable:

```bash
devenv shell -- language-conformance-test
```

Do not edit generated files under `testdata/published` by hand. Provider and
policy fixtures under `pulumi-language-dart/testdata/providers` and
`pulumi-language-dart/testdata/policies` are maintained inputs, not generated
snapshots.

### Generate A Provider SDK

```bash
task setup
task generate:provider PACKAGE=gcp
```

Generated output goes to `packages/<provider>`.

### Smoke Test A Generated Provider

```bash
task smoke:init PACKAGE=gcp
task smoke:preview PACKAGE=gcp
```

### Check Schema Drift

```bash
repodoc schema:check
repodoc schema:check --provider aws
repodoc schema:check --fail-on-drift

# Machine-readable output for automation
repodoc schema:check --provider aws --json --pretty
```

### Audit Upstream SDK Work

```bash
repodoc upstream:check --core-only
repodoc upstream:check --provider aws
repodoc upstream:check --details
```

See `docs/upstream-maintenance.md` for review boundaries and the current parity
backlog.

## Pull Request Checklist

- Keep commits atomic and scoped.
- Run tests/checks for the subsystem you changed.
- If generator output changes, regenerate affected provider packages.
- Update docs when behavior or contributor workflow changes.

## CI And Release Workflows

- `.github/workflows/dart-ci.yml`
- `.github/workflows/dart-schema-drift.yml`
- `.github/workflows/dart-release-language-host.yml`

Language host release artifacts are produced from version tags (`vX.Y.Z`).
