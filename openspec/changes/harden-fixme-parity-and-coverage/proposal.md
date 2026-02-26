## Why

Pulumi Dart still has explicit `TODO`/`FIXME`/`UnimplementedError` markers in core runtime and language-host paths that can hide behavior drift versus Go/Node/Python. We need a single parity-hardening change that closes these gaps and raises test/coverage guarantees to a level consistent with other Pulumi SDKs.

## What Changes

- Build and maintain a parity backlog from current `TODO`/`FIXME`/`UnimplementedError` sites, classified by:
  - production runtime behavior,
  - language host protocol behavior,
  - test-only scaffolding.
- For each production/runtime and language-host item, define expected behavior by comparing the corresponding Go/Node/Python implementation and tests in `pulumi/`.
- Replace placeholder implementations with parity-aligned behavior, including:
  - runtime/deployment behavior currently left as TODOs,
  - language-host TODO flows in package discovery/generation/exit semantics where applicable,
  - mock/test harness behavior that currently masks runtime parity issues.
- Expand regression coverage around each closed backlog item so every resolved FIXME/TODO is protected by focused tests.
- Introduce coverage reporting for Dart SDK tests following upstream SDK patterns:
  - Node: `nyc` + Cobertura export,
  - Python: `pytest --cov` + coverage XML export,
  - Go: `go test -cover` in shared build flow.
- Add CI-friendly coverage artifact generation for `pulumi-dart` and define a ratcheting policy (no regressions; thresholds raised over time).

Non-goals:

- Rewriting large subsystems that already match upstream behavior.
- Forcing 100% line coverage in a single change.
- Changing public SDK APIs unless required for parity correctness.

## Capabilities

### New Capabilities
- None.

### Modified Capabilities
- `language-host-lifecycle-parity`: tighten requirements for unresolved host TODO paths and assert parity via targeted host tests.
- `sdk-generation-workflow-parity`: require deterministic behavior for remaining generator placeholder paths and parity-sensitive edge cases.
- `runtime-resource-behavior-parity`: replace runtime placeholders with parity-aligned behavior and add explicit conformance tests.
- `parity-integration-coverage`: expand integration and unit coverage requirements and add coverage artifact/reporting gates for Dart.

## Impact

- Runtime SDK (`pulumi-dart`):
  - `pulumi-dart/lib/src/deployment/**`
  - `pulumi-dart/lib/src/resource/**`
  - `pulumi-dart/lib/src/callback_server.dart`
  - `pulumi-dart/lib/src/monitor.dart`
  - `pulumi-dart/test/**`
- Language host (`pulumi-language-dart`):
  - `pulumi-language-dart/main.go`
  - `pulumi-language-dart/*_test.go`
- Generator and schema/codegen paths:
  - `pulumi_generator/**`
  - `pulumi-language-dart/generate_pack_test.go`
- Build/test automation and coverage reporting:
  - `Taskfile.yml`
  - `Makefile`
  - potential CI workflow updates for coverage artifacts
- Upstream reference inputs:
  - `pulumi/sdk/nodejs/**`
  - `pulumi/sdk/python/**`
  - `pulumi/sdk/go/**`

Compatibility and migration considerations:

- Language host changes must remain protocol-compatible with Pulumi CLI/engine expectations.
- Runtime parity fixes should preserve existing successful stack deploy flows.
- Coverage gates should start as ratcheting/non-regression to avoid blocking on legacy debt, then tighten incrementally.
