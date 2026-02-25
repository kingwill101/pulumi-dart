# Pulumi Dart Readiness Tracker

Last updated: 2026-02-25

## Executive Status

- Can we deploy infrastructure with Pulumi Dart today? **Yes, for core flows.**
- Is Pulumi Dart at parity with Pulumi Node/Python/Go? **No.**
- Primary blocker: **generator/codegen flow is not complete**.

## What Works Today

Validated on this checkout with:

```bash
go test -count=1 -run 'Test(EmptyDart|ConfigBasicDart|DebuggerAttachDart|PluginDebuggerAttachDart|DartTransformations|DartResourceTransformsV2|DartInvokeTransforms|ParameterizedDart)$' -v .
```

Result: `PASS` (`ok github.com/pulumi-dart/integration_tests 44.971s`)

Covered capabilities:

- basic program execution (`up/refresh/destroy`)
- config + secrets basics
- stack outputs
- stack references
- provider call flow
- construct/component flows

## Gap Summary vs Node/Python/Go

## 1) Generator Flow (Critical)

Status: **Open**

Current behavior in Dart language host:

- `GeneratePackage` only emits a minimal package scaffold (`pubspec.yaml` + `lib/<pkg>.dart`).
- schema parsing only reads `name`, `namespace`, `version`.
- no full resource/type/function SDK generation pipeline.

Evidence:

- `pulumi-language-dart/main.go`:
  - `packageSchema` at line ~1015
  - `GeneratePackage` at line ~1087
- `pulumi_generator` still scaffold-level:
  - `pulumi_generator/README.md` has TODO template content
  - `pulumi_generator/test/pulumi_generator_test.dart` has commented-out sample test

Impact:

- generated SDKs are not first-class like other Pulumi languages
- provider developer and consumer ergonomics are incomplete

## 2) Language Host RPC Parity (High)

Status: **In Progress**

Dart host implements:

- `GetRequiredPlugins`
- `Run`
- `RunPlugin`
- `GetRequiredPackages`
- `GenerateProject`
- `GenerateProgram`
- `GeneratePackage`
- `Pack`
- `Handshake`
- `Cancel`
- `Link`

Remaining parity work in this area:

- add/port broader upstream integration tests that exercise all new RPC semantics against engine expectations

Impact:

- host method coverage is substantially improved
- remaining risk is behavioral drift without broader parity fixture coverage

## 3) Runtime Transform Pipeline (High)

Status: **In Progress**

Completed in current port slice:

- Implemented transform callback behavior for:
  - `registerTransform`
  - `registerStackInvokeTransformAsync`
- Wired `resourceTransforms` into resource registration request callbacks (guarded by monitor `supportsFeature("transforms")`).
- Added inheritance/propagation for `resourceTransforms` from parent resources.
- Added integration fixture + test coverage for v2 resource transform behavior:
  - `integration_tests/resource_transforms_v2/*`
  - `TestDartResourceTransformsV2`
- Added stack invoke transform registration API + integration fixture coverage:
  - `registerInvokeTransform` in `pulumi-dart/lib/src/deployment/stack.dart`
  - `integration_tests/invoke_transforms/*`
  - `TestDartInvokeTransforms`

Remaining gaps:

- Add negative feature-negotiation edge-path tests for invoke-transform support checks.
- Expand parity coverage against upstream transform failure/diagnostic cases.

Evidence:

- `pulumi-dart/lib/src/callback_server.dart`
- `pulumi-dart/lib/src/deployment/deployment.dart`
- `pulumi-dart/lib/src/resource/resource.dart`
- `integration_tests/transformations_simple_test.go`
- `integration_tests/resource_transforms_v2/bin/resource_transforms_v2_dart.dart`
- `integration_tests/invoke_transforms/bin/invoke_transforms_dart.dart`

Impact:

- modern resource transform pathways are now active; remaining risk is primarily coverage depth

## 4) Package Reference Plumbing (High)

Status: **Closed (slice complete)**

Completed:

- `call.dart` and `invoke.dart` now register packages with monitor and forward resolved `packageRef`.
- resource registration path now resolves and forwards `packageRef`.
- runtime package registration request conversion implemented via deployment models.

Evidence:

- `pulumi-dart/lib/src/deployment/call.dart`
- `pulumi-dart/lib/src/deployment/invoke.dart`
- `pulumi-dart/lib/src/deployment/deployment.dart`
- `pulumi-dart/lib/src/deployment/models.dart`
- `pulumi-dart/lib/src/monitor.dart`

Impact:

- parameterized package behaviors are now wired end-to-end in runtime paths

## 5) Resource Option Forwarding Drift (Medium)

Status: **Closed (slice complete)**

Completed:

- `ignoreChanges` is typed as `List<String>?` and forwarded into `RegisterResourceRequest.ignoreChanges`.

Evidence:

- `pulumi-dart/lib/src/resource/resource_options.dart`
- `pulumi-dart/lib/src/deployment/deployment.dart`

Impact:

- resource lifecycle behavior is aligned for `ignoreChanges` forwarding

## 6) Test Coverage Gaps (Medium)

Status: **Open**

Current issues:

- parameterized SDK test validates importability, not rich generated API behavior.
- some tests remain conditionally skipped (env/platform/fixture constraints).

Evidence:

- `integration_tests/parameterized/test/parameterized_test.dart`
- `integration_tests/integration_dart_test.go`
- `integration_tests/debugger_dart_test.go`

Impact:

- regressions/parity drift can hide in less-covered behavior

## Reference Parity Targets (Upstream)

Methods implemented upstream (Node/Python/Go) that Dart should match:

- Node host: `GetRequiredPackages`, `Handshake`, `GenerateProject`, `GenerateProgram`, `GeneratePackage`, `Pack`, `Cancel`
- Python host: `GetRequiredPackages`, `Pack`, `GenerateProject`, `GenerateProgram`, `GeneratePackage`, `Handshake`, `Cancel`
- Go host: `GetRequiredPackages`, `GenerateProject`, `GenerateProgram`, `GeneratePackage`, `Pack`, `Handshake`, `Cancel`

Source files:

- `pulumi/sdk/nodejs/cmd/pulumi-language-nodejs/main.go`
- `pulumi/sdk/python/cmd/pulumi-language-python/main.go`
- `pulumi/sdk/go/pulumi-language-go/main.go`

## Tracking Checklist

## Milestone A: Host RPC Parity

- [x] Implement `GetRequiredPackages` in `pulumi-language-dart`
- [x] Implement `GenerateProject`
- [x] Implement `GenerateProgram`
- [x] Implement `Pack`
- [x] Implement `Handshake`
- [x] Implement `Cancel`
- [ ] Add integration tests for each new RPC behavior

Exit criteria:

- Dart language host exports and passes parity tests for these RPCs.

## Milestone B: Generator MVP to Real SDK

- [ ] Replace minimal `GeneratePackage` scaffold with schema-driven generation
- [ ] Generate resources, functions, input/output types, enums, config types
- [ ] Produce usable top-level exports and package structure
- [ ] Add golden/codegen tests against representative schemas
- [ ] Validate with a real provider SDK (not just importability smoke)

Exit criteria:

- Generated Dart SDKs are usable for real provider workflows beyond testprovider basics.

## Milestone C: Runtime Completeness

- [x] Implement callback server transform logic (`registerTransform`)
- [x] Implement stack invoke transform async path (`registerStackInvokeTransformAsync`)
- [x] Wire `resourceTransforms` and validate behavior parity with existing transformations
- [x] Implement package ref resolution and registration wiring end-to-end
- [x] Forward `ignoreChanges` and other missing lifecycle fields
- [x] Add dedicated invoke-transform integration coverage
- [ ] Add negative feature-support tests for invoke transforms

Exit criteria:

- transform + packageRef + lifecycle options behave consistently with other Pulumi SDKs.

## Milestone D: Coverage and Drift Control

- [ ] Port missing upstream integration classes (CLI output/config/error/dynamic-provider edge cases)
- [ ] Unskip/skiplift tests where feasible
- [ ] Add CI matrix slices for Dart parity categories
- [ ] Define a recurring parity audit against Node/Python/Go changes

Exit criteria:

- parity regressions are surfaced quickly and tracked automatically.

## Suggested Commit Slices (Atomic)

1. Host RPC parity primitives (`Handshake`, `Cancel`, `GetRequiredPackages`)
2. Project/program/package pipeline (`GenerateProject`, `GenerateProgram`, `Pack`)
3. Generator core implementation + golden tests
4. Runtime transform callbacks + `resourceTransforms` wiring
5. Package ref plumbing in `invoke/call/register`
6. Resource options forwarding fixes (`ignoreChanges` etc.)
7. Integration parity test ports and skip reductions

## Notes

- This file is intended to stay live and be updated per merged PR.
- Update "Last updated" and checkboxes with each parity slice.
