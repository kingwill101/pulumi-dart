# Pulumi Dart Readiness Tracker

Last updated: 2026-02-26

## Executive Status

- Can we deploy infrastructure with Pulumi Dart today? **Yes, for core flows.**
- Is Pulumi Dart at parity with Pulumi Node/Python/Go? **No.**
- Primary blocker: **long-tail generator/schema parity edge cases** (core generation flow is now operational).

## What Works Today

Validated on this checkout with:

```bash
go test -count=1 -run 'Test(StackOutputsDart|ConfigSecretsWarnDart|StackOutputsProgramErrorDart|StackOutputsResourceErrorDart|CustomTimeouts(Success|Failure)Dart)$' -v .
```

Result: `PASS` (`ok github.com/pulumi-dart/integration_tests 6.692s` for the custom-timeout slice; stack-output/config subset also passing)

Additional validation:

```bash
go test -count=1 -run '^TestConstructNestedDart$' -v .
```

Result: `PASS` (`ok github.com/pulumi-dart/integration_tests 20.610s`)

```bash
go test -count=1 -run '^TestComponentProviderErrorInResourceRegistrationDart$' -v .
```

Result: `PASS` (`ok github.com/pulumi-dart/integration_tests 30.891s`)

```bash
go test -count=1 .
```

Result: `PASS` (`ok github.com/pulumi-dart/integration_tests 335.068s`)

Covered capabilities:

- basic program execution (`up/refresh/destroy`)
- config + secrets basics
- stack outputs
- stack references
- provider call flow
- construct/component flows
- stack output persistence on program/resource failure paths
- custom timeout success/failure behavior
- nested remote component construction with provider propagation
- component provider resource-error regression (no hang, expected diagnostics)
- registry fixture execution coverage
- policy-pack enforcement flows against Dart programs (advisory, mandatory, multi-pack)
- plugin installation/runtime option coverage (`python-uv`, `nodejs-pnpm`)
- automation API error-path fixture execution (upstream parity example)

## Gap Summary vs Node/Python/Go

## 1) Generator Flow (Critical)

Status: **In Progress**

Current validation snapshot (2026-02-26):

- `task generate:all`: **PASS** (gcp, gcp-global-cloudrun, google-native, aws, awsx, random).
- `task analyze:random`, `task analyze:aws`, `task analyze:gcp`: **0 issues** each.
- `task smoke:preview PACKAGE=random|aws|gcp`: **PASS**.
- Known warning class during generation for some schemas (`gcp`, `aws`, `random`): upstream schema emits deprecated provider-reference warnings (`/resources/pulumi:providers:<pkg>` vs `#/provider`); generation succeeds and this does not currently block SDK output.

Current behavior in Dart language host:

- `GeneratePackage` emits a public root library (`lib/<pkg>.dart`) and an implementation SDK (`lib/src/<pkg>/sdk.dart`).
- typed generation now covers resources/functions, named object/enum types, config getters, and typed args/results.
- nested collection mappings for named refs are generated for `List<T>` / `Map<String, T>` in args/results/config.
- schema binding path uses Pulumi `schema.BindSpec` when `loader_target` is provided, with permissive raw-schema fallback when loader resolution is unavailable.

Evidence:

- `pulumi-language-dart/main.go`:
  - `packageSchema` includes resources/functions/config/enums/object classes and typed property metadata
  - `GeneratePackage` writes root export + SDK implementation layout
  - generation emits typed `CustomResource` / `ComponentResource`, invoke wrappers, enums/object classes/config class, and collection encode/decode helpers
- `pulumi-language-dart/generate_pack_test.go`:
  - golden snapshot tests for generated public + SDK files
  - collection ref mapping coverage (`List`/`Map` of enum/object refs)
  - regression coverage for resource output-property name collisions with constructor parameters
- integration consumers now assert the root-export + `lib/src/<pkg>/sdk.dart` layout:
  - `integration_tests/parameterized_dart_test.go`
  - `integration_tests/integration_dart_test.go` (`TestPackageAddNamespaceDart`)
- `pulumi_generator` now has concrete docs/examples/tests for its builder:
  - `pulumi_generator/README.md` documents builder purpose and usage
  - `pulumi_generator/test/pulumi_generator_test.dart` validates generated extension output and no-op cases
  - `pulumi_generator/example/pulumi_generator_example.dart` replaced template scaffold content
- `integration_tests/integration_dart_test.go`:
  - `TestPackageAddNamespaceDart` now validates generated namespace SDK structure/content and compiles it via `dart test`

Impact:

- generated SDKs are now materially usable for typed SDK authoring flows, but still not full parity with mature Pulumi language generators
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

- parameterized SDK coverage now validates generated package structure, expected resource-class emissions, generated invoke symbol export, and live runtime semantics for generated resource/invoke wrappers (`pkg.Echo`, `pkg.doEcho`) in the parameterized fixture using pure parameterized plugin resolution (without local `pkg` provider mapping).
- namespace package-add flow now validates generated SDK structure and typed behavior for enum/object/config/args/result symbols in a non-testprovider schema, but does not yet validate live invoke/runtime semantics for generated functions.
- broader upstream parity classes (for example policy pack publish/lifecycle cloud flows and additional automation API variants) still need Dart ports.
- plugin debugger attach flow is now validated via StartDebugging event + advertised DAP config to avoid known connection-refused race in parallel attach timing.

Evidence:

- `integration_tests/parameterized/test/parameterized_test.dart`
- `integration_tests/parameterized_dart_test.go`
- `integration_tests/integration_dart_test.go`
- `integration_tests/package_add/namespace/*`
- `integration_tests/debugger_dart_test.go`
- `integration_tests/upstream_dart_ports_test.go`
- `integration_tests/upstream_policy_plugin_automation_dart_test.go`
- `integration_tests/policy_dart/*`
- `integration_tests/plugin_install/*`
- `integration_tests/automation/error/*`
- `integration_tests/integration_dart_smoke_test.go`
- `integration_tests/stack_outputs_program_error/*`
- `integration_tests/stack_outputs_resource_error/*`
- `integration_tests/custom_timeouts/*`
- `integration_tests/construct_nested_component/*`
- `integration_tests/component_error_resource/*`

Impact:

- regressions/parity drift can hide in less-covered behavior

## 7) Coverage and Mutation Baseline (Current)

Status: **In Progress**

Latest local baseline snapshot (2026-02-26):

- `task test:coverage`: **PASS**
  - artifact: `pulumi-dart/coverage/lcov.info`
  - aggregate line coverage: `29.27%` (`LH=2470`, `LF=8438`)
- `task test:mutation:dry:coverage`: **PASS (expected dry-run non-zero behavior handled by task)**
  - mutants found: `896`
  - not covered by tests: `256`
  - report: `pulumi-dart/mutation-test-report/mutation-test-report.html`

Current ratchet policy:

- baseline enforcement command: `task test:coverage:ratchet`
- baseline value: `29.27%` (non-regression floor)

Priority mutation hotspots:

1. `lib/src/deployment/deployment.dart` (173)
2. `lib/src/callback_server.dart` (152)
3. `lib/src/resource/resource.dart` (134)
4. `lib/src/serializer.dart` (123)
5. `lib/src/deserializer.dart` (89)

Backlog/reference document:

- `docs/pulumi-dart-parity-backlog.md`

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

- [x] Emit schema-driven resource and function stubs in generated package output.
- [x] Replace minimal `GeneratePackage` scaffold with schema-driven generation (MVP stub level)
- [x] Generate typed resources, input/output types, enums, config types (including collection ref mappings)
- [x] Produce usable top-level exports and package structure
- [x] Add generation workflow tests that validate generated symbol usage (not import-only)
- [x] Add golden/codegen tests against representative schemas
- [x] Replace `pulumi_generator` template scaffolding with concrete builder docs/example/tests
- [x] Validate with a real provider SDK beyond testprovider fixtures (`package_add/namespace` schema flow)

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

- [x] Port stack-output failure-path parity fixtures/tests (`stack_outputs_program_error`, `stack_outputs_resource_error`)
- [x] Port nested remote component parity fixture/test (`construct_nested_component`)
- [x] Port component-provider resource-error regression fixture/test (`component_error_resource`)
- [x] Remove legacy C# fixture artifacts after Dart parity ports landed
- [ ] Port missing upstream integration classes (CLI output/config/error/dynamic-provider edge cases)
- [x] Unskip/skiplift tests where feasible
- [x] Add CI matrix slices for Dart parity categories
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
