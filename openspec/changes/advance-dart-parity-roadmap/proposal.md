## Why

Pulumi Dart can deploy core stacks today, but critical parity gaps remain versus Pulumi Go/Python/Node in language host RPC coverage, SDK generation workflow, runtime behavior, and integration coverage. We need a staged, testable change plan now so implementation work closes the highest-impact gaps without introducing regressions.

## What Changes

- Define and deliver a staged parity roadmap across four capability areas:
- Language host lifecycle and package discovery RPC parity.
- SDK generation workflow parity (`GenerateProject`, `GenerateProgram`, `GeneratePackage`, `Pack`) with usable outputs.
- Runtime resource behavior parity (transforms, package references, lifecycle option forwarding).
- Integration parity coverage that validates new behavior end-to-end.
- Add explicit validation gates per slice using targeted `go test` and Dart test commands.
- Preserve backward compatibility for existing working deploy flows while new behavior is added.

Non-goals for this change:

- Shipping complete parity for every historical upstream integration test in one PR.
- Re-architecting Pulumi core protocol semantics beyond matching established upstream behavior.
- Introducing unrelated runtime API redesign outside parity-driven gaps.

## Capabilities

### New Capabilities

- `language-host-lifecycle-parity`: Define required lifecycle/package RPC behavior for Dart language host parity.
- `sdk-generation-workflow-parity`: Define required behavior for generating usable Dart SDKs and projects from Pulumi schemas/program generation flows.
- `runtime-resource-behavior-parity`: Define required runtime semantics for transforms, package references, and resource option forwarding.
- `parity-integration-coverage`: Define required integration and regression coverage to keep parity slices stable over time.

### Modified Capabilities

- None.

## Impact

- Language host: `pulumi-language-dart/main.go`, `pulumi-language-dart/*_test.go`
- Dart runtime: `pulumi-dart/lib/src/deployment/*.dart`, `pulumi-dart/lib/src/resource/*.dart`, `pulumi-dart/lib/src/callback_server.dart`
- Generator: `pulumi-language-dart/main.go`, `pulumi_generator/**`
- Integration harness and fixtures: `integration_tests/*.go`, `integration_tests/**/pubspec.yaml`, `integration_tests/parameterized/**`
- Build and protocol artifacts where needed: `Makefile`, `proto/**`, generated Dart protos under `pulumi-dart/lib/src/pulumirpc/**`

Compatibility and migration considerations:

- CLI/language host protocol compatibility must remain aligned with current Pulumi engine expectations.
- Generated SDK structure changes may affect consumer imports and must be validated with generated-package tests.
- Runtime behavior changes (transforms/packageRef/ignoreChanges) must preserve existing passing integration flows.
