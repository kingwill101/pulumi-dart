## 1. Build and classify the parity backlog

- [ ] 1.1 Inventory `TODO|FIXME|UnimplementedError` across `pulumi-language-dart`, `pulumi-dart`, and `pulumi_generator`, and classify each item as host/runtime/generator/test-only with upstream reference notes (verify: `rg -n \"TODO|FIXME|UnimplementedError\" pulumi-language-dart pulumi-dart pulumi_generator`; expected: backlog document committed with classifications and file references).
- [ ] 1.2 Mark candidate items that are already obsolete or intentionally deferred, with explicit rationale and target change linkage (verify: `git diff -- openspec docs | cat`; expected: each deferred item has a reason and owner/scope).

## 2. Close language-host parity gaps with deterministic behavior

- [ ] 2.1 Implement remaining `Handshake`, `Cancel`, and `GetRequiredPackages` parity behaviors in `pulumi-language-dart` and remove placeholder paths (verify: `cd pulumi-language-dart && go test ./...`; expected: tests pass with no new TODO-based failures).
- [ ] 2.2 Harden host generation RPC error semantics (`GenerateProgram`, `GenerateProject`, `Pack`, `GeneratePackage`) against invalid/conflicting inputs (verify: `cd pulumi-language-dart && go test -run 'Test.*Generate|Test.*Pack|Test.*Handshake|Test.*Cancel' -v .`; expected: targeted success/failure parity tests pass).

## 3. Close runtime parity gaps and add conformance tests

- [ ] 3.1 Implement/finish packageRef plumbing and lifecycle option forwarding edge handling in runtime monitor paths (verify: `cd pulumi-dart && dart test test/resource_test.dart test/deployment_test.dart`; expected: updated runtime parity tests pass).
- [ ] 3.2 Implement/finish resource and stack invoke transform callback failure handling without `UnimplementedError` placeholders (verify: `cd pulumi-dart && dart test test/stack_test.dart test/deployment_invoke_test.dart`; expected: success and failure transform scenarios pass).

## 4. Harden generator parity and schema edge behavior

- [x] 4.1 Resolve generator placeholder behavior for namespacing, collision handling, helper reuse, and missing-type references using deterministic rules (verify: `cd pulumi-language-dart && go test -run 'TestGeneratePack|TestGeneratePackage' -v .`; expected: parity and collision tests pass).
- [x] 4.2 Validate generated package smoke flows for selected providers (for example `random`, `aws`, `gcp`) with compile/analyze checks and documented known exclusions (verify: `task generate:all && task smoke:random`; expected: generation tasks complete and smoke preview succeeds for at least `random`).

## 5. Coverage, mutation reporting, and CI ratchet integration

- [ ] 5.1 Keep Dart coverage artifact generation wired in local and CI entrypoints with non-regression ratchet baselines (verify: `task test:coverage`; expected: `pulumi-dart/coverage/lcov.info` is produced and CI upload path is documented).
- [ ] 5.2 Run mutation dry coverage and capture actionable weak-test areas for follow-up slices (verify: `task test:mutation:dry:coverage`; expected: mutation report generated with prioritized uncovered/killed summary).

## 6. Documentation sync and cleanup

- [x] 6.1 Update readiness tracker and package docs to reflect completed parity slices, remaining blockers, and coverage policy (verify: `rg -n \"parity|coverage|generator|TODO|FIXME\" docs README.md pulumi-dart/README.md`; expected: docs mention current state and next actions without stale claims).
- [ ] 6.2 Remove or convert shipped TODO/FIXME placeholders to explicit tracked backlog references, and ensure no unresolved placeholder remains in completed slices (verify: `rg -n \"TODO|FIXME|UnimplementedError\" pulumi-language-dart pulumi-dart pulumi_generator`; expected: resolved slice files no longer contain untracked placeholders).
