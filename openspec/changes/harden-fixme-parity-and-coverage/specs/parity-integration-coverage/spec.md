## MODIFIED Requirements

### Requirement: Parity Slice Test Coverage
Each implemented parity slice MUST have integration, host-level, or runtime tests that validate expected success behavior and at least one edge or failure behavior, and each test MUST be traceable to the resolved TODO/FIXME backlog item.

#### Scenario: Success and failure coverage for a resolved slice
- **WHEN** a parity backlog item is implemented in runtime or language host code
- **THEN** at least one success-path and one failure or edge-path test is added or updated
- **AND** test naming or comments identify the backlog item and expected parity behavior.

#### Scenario: Implementation without parity tests
- **WHEN** a parity-impacting implementation change is proposed without success and failure coverage
- **THEN** parity validation fails in CI or local verification
- **AND** the change is not considered complete until required coverage exists.

### Requirement: Drift Detection in CI
Parity-focused tests and Dart coverage artifact generation MUST be runnable in CI and local developer flows, and MUST fail on behavioral regressions or coverage regressions relative to the ratcheted baseline.

#### Scenario: CI executes parity and coverage validation
- **WHEN** CI runs the parity validation workflow
- **THEN** targeted host/runtime/integration parity suites execute
- **AND** Dart coverage artifacts are generated in a CI-consumable format and published as job artifacts.

#### Scenario: Coverage or parity regression detected
- **WHEN** a change reduces ratcheted coverage baseline or breaks parity behavior tests
- **THEN** CI fails with actionable output identifying the failing suite or coverage delta
- **AND** merge is blocked until regressions are resolved or baseline policy is explicitly updated.
