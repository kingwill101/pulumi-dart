# Contributing To Pulumi Dart

This guide is for contributors working on the language host, core SDK, and provider generation workflow.

## Prerequisites

- Go
- Dart SDK
- Pulumi CLI
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
