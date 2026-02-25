## 1. Baseline and Scope Lock

- [x] 1.1 Capture current baseline by running `openspec validate advance-dart-parity-roadmap --strict` and record expected success signal (`Change 'advance-dart-parity-roadmap' is valid`).
- [x] 1.2 Run parity baseline tests `cd integration_tests && go test -count=1 -run 'Test(EmptyDart|ConfigBasicDart|StackOutputsDart|StackReferenceDart|ProviderCallDart|ConstructDart)$' -v .` and record expected signal (`PASS`).
- [x] 1.3 Confirm upstream parity references for host methods in `pulumi/sdk/{nodejs,python,go}` and document any drift before implementation.

## 2. Language Host Lifecycle Parity

- [x] 2.1 Implement `Handshake`, `Cancel`, and `GetRequiredPackages` in `pulumi-language-dart/main.go` with parity-focused behavior.
- [x] 2.2 Add/update host tests for lifecycle preconditions and cancellation paths in `pulumi-language-dart/*_test.go`.
- [x] 2.3 Validate host lifecycle slice with targeted tests (for example `cd pulumi-language-dart && go test -count=1 -run 'Test.*(Handshake|Cancel|RequiredPackages).*' -v ./...`) and expect `PASS`.

## 3. SDK Generation Workflow Parity

- [x] 3.1 Implement/complete `GenerateProject`, `GenerateProgram`, and `Pack` behavior in `pulumi-language-dart`.
- [x] 3.2 Upgrade `GeneratePackage` from scaffold-only output to schema-driven usable SDK output.
- [x] 3.3 Add generation workflow tests (host-level and fixture-level) that verify functional generated symbol usage (not import-only).
- [x] 3.4 Validate generation slice with targeted tests (for example `cd integration_tests && go test -count=1 -run 'TestParameterizedDart' -v .`) and expect `PASS`.

## 4. Runtime Resource Behavior Parity

- [x] 4.1 Implement transform callback logic in `pulumi-dart/lib/src/callback_server.dart` for resource and invoke transforms.
- [x] 4.2 Implement package reference resolution/plumbing in runtime call/invoke/register paths (`deployment/call.dart`, `deployment/invoke.dart`, `deployment/deployment.dart`).
- [x] 4.3 Forward lifecycle fields including `ignoreChanges` in register requests and add regression tests for option propagation.
- [x] 4.4 Validate runtime slice with targeted integration tests (for example `cd integration_tests && go test -count=1 -run 'Test(DartTransformations|ConstructErrorApplyDart|ProviderCallDart)$' -v .`) and expect `PASS`.

## 5. Integration Parity Coverage Expansion

- [x] 5.1 Port missing high-value upstream parity tests into Dart integration suites for host lifecycle, generator behavior, runtime options, and failure diagnostics.
- [x] 5.1.1 Port upstream `stack_outputs_program_error` coverage to Dart fixtures/tests.
- [x] 5.1.2 Port upstream `stack_outputs_resource_error` coverage to Dart fixtures/tests.
- [x] 5.1.3 Port upstream `custom_timeouts` coverage to Dart fixtures/tests.
- [x] 5.1.4 Port upstream `construct_nested_component` coverage to Dart fixtures/tests.
- [x] 5.1.5 Port upstream `component-error-resource` regression coverage to Dart fixtures/tests.
- [ ] 5.2 Ensure each added behavior has at least one success and one edge/failure test path.
- [x] 5.2.1 `stack_outputs_program_error`: success baseline + failing edit path validated.
- [x] 5.2.2 `stack_outputs_resource_error`: success baseline + two failing edit modes validated.
- [x] 5.2.3 `custom_timeouts`: success + invalid-timeout failure paths validated.
- [x] 5.2.4 Host lifecycle RPCs: add explicit success/failure tests per implemented RPC.
- [ ] 5.2.5 Generator workflow: add additional negative/edge-path tests beyond invalid schema.
- [x] 5.3 Add/adjust CI invocation to run parity-targeted suites and verify expected signal (`PASS` and no unexpected skips).

## 6. Spec and Documentation Sync

- [x] 6.1 Update `docs/pulumi-dart-readiness-tracker.md` with completed slice status and residual risks.
- [x] 6.2 Re-run `openspec validate advance-dart-parity-roadmap --strict` and ensure validation succeeds.
- [ ] 6.3 Remove or resolve temporary TODO placeholders introduced during parity implementation and confirm no unresolved parity TODOs remain in touched files.
- [ ] 6.3.1 Resolve debugger attach TODO/skip placeholders in Dart integration tests where feasible.
