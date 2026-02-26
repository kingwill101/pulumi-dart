## MODIFIED Requirements

### Requirement: Program Generation RPC
`GenerateProgram` MUST return compilable Dart sources for engine-initiated program generation requests and MUST not emit scaffold TODO placeholders in generated runtime entrypoints.

#### Scenario: Generate runnable program sources
- **WHEN** `GenerateProgram` is invoked with valid source inputs
- **THEN** the host returns a source map including a runnable Dart entrypoint
- **AND** generated sources pass `dart analyze` in a generated project context

#### Scenario: Invalid generation input
- **WHEN** `GenerateProgram` is invoked with invalid or unsupported generation inputs
- **THEN** the host returns deterministic diagnostics describing the failure
- **AND** the host does not return partially generated source maps as success

### Requirement: Project Generation RPC
`GenerateProject` MUST produce a usable Dart Pulumi project scaffold aligned with current runtime entrypoint conventions.

#### Scenario: Generate project scaffold
- **WHEN** `GenerateProject` is invoked with project metadata and target path
- **THEN** the host writes `Pulumi.yaml`, `pubspec.yaml`, and runnable `bin/<project>.dart`
- **AND** `dart pub get` succeeds in the generated project without manual edits

#### Scenario: Existing conflicting files
- **WHEN** `GenerateProject` is invoked for a target containing conflicting non-generated files
- **THEN** the host returns a clear conflict error
- **AND** existing user files are not silently overwritten

### Requirement: Package Archive RPC
`Pack` MUST produce a distributable archive from generated package output with deterministic behavior for valid and invalid inputs.

#### Scenario: Pack generated package
- **WHEN** `Pack` is invoked with valid source and destination directories
- **THEN** the host writes a `.tar.gz` artifact containing package contents
- **AND** the response returns the produced artifact path

#### Scenario: Missing package source
- **WHEN** `Pack` is invoked with a missing or invalid package source directory
- **THEN** the host returns an actionable error
- **AND** no partial archive artifact is left behind

### Requirement: Schema-Driven Package Generation
`GeneratePackage` MUST produce schema-driven Dart SDK outputs that are consumable without manual patching and resilient to schema edge cases.

#### Scenario: Generate modular SDK layout
- **WHEN** `GeneratePackage` is invoked with provider schema resources and functions
- **THEN** output includes module-level exports and per-type files in deterministic namespace layout
- **AND** generated SDK imports resolve without missing-type failures in smoke projects

#### Scenario: Name collision and helper reuse handling
- **WHEN** schema inputs introduce conflicting type names or repeated helper patterns
- **THEN** generation resolves collisions deterministically via namespacing strategy
- **AND** shared helper behavior is reused instead of duplicating incompatible helper implementations
