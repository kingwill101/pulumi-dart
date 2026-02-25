## Context

Pulumi Dart currently passes core deployment integration tests, but parity analysis shows four cross-cutting gaps:

- Missing language host lifecycle/package RPC parity compared with upstream Go/Python/Node hosts.
- SDK generation workflow is partially implemented and currently emits minimal package scaffolding.
- Runtime semantics are incomplete for transforms, package reference plumbing, and some resource option forwarding.
- Integration coverage does not yet fully protect these parity surfaces against drift.

This change spans host (`pulumi-language-dart`), runtime (`pulumi-dart`), generator flow (`pulumi_generator` and host generation paths), and integration harness (`integration_tests`), so a single-system design is insufficient.

## Goals / Non-Goals

**Goals:**

- Define and implement parity behavior in vertical slices that are independently testable and shippable.
- Align Dart behavior with established Pulumi host/runtime semantics in Go/Python/Node for targeted parity areas.
- Add regression coverage so parity behavior remains stable as upstream Pulumi evolves.

**Non-Goals:**

- Full parity with every upstream scenario in a single implementation pass.
- Redesigning Pulumi protocol contracts.
- Large refactors that do not directly close a documented parity requirement.

## Decisions

### Decision 1: Implement parity in four capability slices

- Slice A: language host lifecycle/package RPC parity
- Slice B: SDK generation workflow parity
- Slice C: runtime resource behavior parity
- Slice D: integration parity coverage

Rationale:

- Limits blast radius and review size.
- Enables incremental confidence via targeted tests per slice.

Alternatives considered:

- Single large parity PR across host/runtime/generator/tests. Rejected due to high regression risk and difficult rollback.

### Decision 2: Treat upstream host/runtime behavior as parity baseline

Rationale:

- Existing Pulumi CLI/engine behaviors are already encoded in Go/Python/Node hosts and integration suites.
- Matching these semantics reduces ambiguity and avoids Dart-specific divergence.

Alternatives considered:

- Define Dart-only semantics where implementation is easier. Rejected because it increases long-term maintenance and surprises users switching languages.

### Decision 3: Require explicit validation gates per slice

Rationale:

- Behavior changes touching protocol boundaries must be validated with integration tests, not only unit tests.
- Keeps progress measurable and supports atomic commits.

Alternatives considered:

- Broad test sweep only at the end. Rejected because failures become harder to localize and fix.

### Decision 4: Keep compatibility-first rollout for generated SDK outputs

Rationale:

- Generator improvements can alter package shape/import paths.
- We need deterministic outputs and smoke/integration checks before adopting stricter expectations.

Alternatives considered:

- Immediate strict output format change without migration checks. Rejected due to avoidable user breakage risk.

## Risks / Trade-offs

- [Risk] Cross-cutting implementation introduces regressions in currently passing deploy flows. -> Mitigation: gate each slice with targeted integration tests and maintain existing smoke coverage.
- [Risk] Generator parity scope expands beyond practical review size. -> Mitigation: keep MVP requirements explicit and defer advanced generation features to follow-up changes.
- [Risk] Upstream parity target shifts while change is in flight. -> Mitigation: record upstream references in specs and re-run parity audit at merge time.
- [Risk] Protocol-facing behavior differs subtly from upstream hosts. -> Mitigation: add behavior-focused tests for success and failure paths per requirement.

## Migration Plan

1. Implement Slice A (host lifecycle/package RPCs), validate with targeted host/integration tests.
2. Implement Slice B (SDK generation workflow), validate generated artifacts and compile/import behavior.
3. Implement Slice C (runtime resource behavior), validate transforms/packageRef/options with focused integration fixtures.
4. Implement Slice D (coverage expansion), include new tests in CI pathways.
5. Update readiness tracker and OpenSpec docs after each slice lands.

Rollback strategy:

- Revert the most recent slice atomically if regressions appear.
- Keep slice boundaries isolated so rollback does not require reverting unrelated parity work.

## Open Questions

- Which minimal generated SDK shape is required for “usable” in Slice B (resource constructors only vs full function/type coverage)?
- Should `integration_tests` Pulumi dependency versions be bumped before or after parity slices to reduce confounding variables?
- Do we require CI to run all new parity tests by default, or stage initially behind focused jobs?
