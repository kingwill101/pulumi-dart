## Context

Pulumi Dart has accumulated parity debt in three coupled areas: language-host protocol behavior (`pulumi-language-dart`), runtime execution behavior (`pulumi-dart`), and schema-driven SDK generation (`pulumi_generator` plus host package-generation entrypoints). Several TODO/FIXME/Unimplemented markers exist in code paths that are now exercised by newer Pulumi engine flows and richer provider schemas.

This change provides a single hardening pass with explicit parity expectations, traceable backlog ownership, and stronger regression guarantees. It also formalizes coverage artifacts for Dart tests so parity fixes remain measurable and ratchetable over time.

Constraints:
- Existing user-facing behavior that already works in production must remain stable.
- Host and runtime behavior must remain compatible with Pulumi CLI and engine protocol expectations.
- Work must ship in small, verifiable slices and avoid broad rewrites.

## Goals / Non-Goals

**Goals:**
- Build and maintain a parity backlog of TODO/FIXME/Unimplemented sites with upstream behavior references.
- Replace placeholder production behavior in host/runtime/generator flows with deterministic, parity-aligned behavior.
- Add focused success and failure tests for each resolved backlog slice.
- Produce CI-friendly Dart coverage artifacts and enforce a ratcheting non-regression policy.

**Non-Goals:**
- Achieving 100% line or mutation coverage in one change.
- Rewriting stable subsystems that already match upstream semantics.
- Introducing broad public API redesign unrelated to parity correctness.

## Decisions

### 1. Track parity work from an explicit backlog keyed to code markers
Decision:
- Each TODO/FIXME/Unimplemented marker in production code is classified as runtime, language-host, generator, or test-only.
- Each production marker is mapped to expected behavior using upstream Pulumi implementations and tests as references.

Rationale:
- This prevents unbounded scope and makes parity work auditable.
- It enables deterministic test planning and completion criteria.

Alternatives considered:
- Opportunistic cleanup while touching code.
  Rejected because it leaves parity progress unmeasurable and uneven across modules.

### 2. Preserve upstream behavior contracts, allow implementation-local structure
Decision:
- Behavioral expectations follow upstream semantics (Go/Node/Python), while Dart internals may use Dart-idiomatic implementation details.
- Any intentional divergence must be documented with rationale and tests.

Rationale:
- Parity is primarily behavioral; internal structure does not need to mirror upstream line-by-line.

Alternatives considered:
- Strict structural mirroring of upstream source layout.
  Rejected because it increases maintenance cost without improving engine-level compatibility.

### 3. Enforce per-slice success + failure coverage
Decision:
- Every resolved parity slice requires at least one success-path test and one edge/failure test.
- Tests live closest to the changed behavior: host tests for protocol flows, runtime tests for callback/resource behavior, integration tests for end-to-end semantics.

Rationale:
- Many historical drifts came from untested failure paths.
- This test shape is small enough for atomic commits and consistent review.

Alternatives considered:
- Rely only on broad integration suites.
  Rejected because triage is slower and failure causality is less clear.

### 4. Treat coverage and mutation signals as ratcheting quality gates
Decision:
- CI generates Dart coverage artifacts and enforces non-regression from baseline.
- Mutation testing is introduced as a prioritization signal, not a hard global gate, until baseline noise is reduced.

Rationale:
- Coverage artifacts provide immediate visibility and align with other Pulumi languages.
- Mutation results help identify weak assertions without blocking all development.

Alternatives considered:
- Immediate hard threshold for mutation score.
  Rejected because current baseline includes significant legacy debt and would block incremental delivery.

## Risks / Trade-offs

- [Risk] Upstream behavior is ambiguous for some edge cases.
  -> Mitigation: anchor behavior to upstream tests first; if absent, document chosen semantics and add explicit tests.

- [Risk] Coverage ratchet can block unrelated changes if baselines are unstable.
  -> Mitigation: ratchet on controlled suites first and update baseline only through explicit review.

- [Risk] Generator changes may cause broad diff churn and naming collisions.
  -> Mitigation: keep deterministic naming/namespace rules, add fixture-based golden checks, and regenerate with stable ordering.

- [Risk] Cross-module work increases merge conflict probability.
  -> Mitigation: ship in atomic grouped commits (host, runtime, generator, test/CI/docs) with narrow scopes.

## Migration Plan

1. Build parity backlog inventory from current TODO/FIXME/Unimplemented markers and classify each item.
2. Resolve highest-priority host/runtime/generator items in small vertical slices, each with success+failure tests.
3. Enable coverage artifact generation in local tasks and CI jobs; establish initial non-regression baseline.
4. Add mutation dry-run reporting for `pulumi-dart` and use it to prioritize follow-up test hardening.
5. Update readiness tracker and OpenSpec artifacts as each slice lands, then enforce baseline ratchet in CI by default.

Rollback strategy:
- Revert the most recent parity slice commit if regression is detected.
- Keep coverage artifact generation enabled even during rollback to preserve observability.
- Use targeted test reruns to identify whether rollback should include related test fixture changes.

## Open Questions

- What initial baseline value should be enforced for Dart coverage ratcheting in CI?
- Which mutation-test metrics should become blocking first (covered mutants only, overall score, or selected critical paths)?
- Are there specific upstream provider schema edge cases that should be codified as permanent generator golden fixtures beyond current GCP/AWS samples?
