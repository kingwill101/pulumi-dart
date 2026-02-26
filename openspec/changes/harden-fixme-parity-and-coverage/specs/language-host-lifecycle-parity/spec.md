## MODIFIED Requirements

### Requirement: Handshake Initialization
The Dart language host MUST implement `Handshake` with upstream-compatible validation and initialization semantics, and MUST NOT rely on TODO placeholders in production execution paths.

#### Scenario: Valid handshake request initializes host state
- **WHEN** the engine sends `LanguageHandshakeRequest` with a non-empty `engine_address`
- **THEN** the host stores the engine address and initializes health-check monitoring
- **AND** the host returns a successful `LanguageHandshakeResponse`

#### Scenario: Missing engine address fails fast
- **WHEN** the engine sends a handshake request with empty or missing `engine_address`
- **THEN** the host returns a structured invalid-argument error
- **AND** the host does not mutate handshake-dependent runtime state

### Requirement: Operation Cancellation
The Dart language host MUST implement `Cancel` to terminate active `Run` and `RunPlugin` operations with deterministic completion semantics.

#### Scenario: Cancel active operation
- **GIVEN** a `Run` or `RunPlugin` operation is currently active
- **WHEN** `Cancel` is invoked
- **THEN** the active operation context is canceled
- **AND** the operation exits promptly with cancellation signal semantics

#### Scenario: Cancel without active operation
- **GIVEN** no active `Run` or `RunPlugin` operation exists
- **WHEN** `Cancel` is invoked
- **THEN** the host returns success as a no-op
- **AND** no panic or fatal error is emitted

### Requirement: Required Package Discovery
The Dart language host MUST implement `GetRequiredPackages` by deriving Pulumi package dependencies from Dart project metadata in a way consistent with upstream host expectations.

#### Scenario: Pubspec contains Pulumi dependencies
- **GIVEN** a project `pubspec.yaml` containing `pulumi_*` dependencies
- **WHEN** `GetRequiredPackages` is invoked with valid `ProgramInfo`
- **THEN** the host returns normalized package name/version tuples for Pulumi dependencies
- **AND** non-Pulumi dependencies are excluded from the returned package list

#### Scenario: Invalid project metadata
- **WHEN** `GetRequiredPackages` is invoked against malformed project metadata
- **THEN** the host returns an actionable error that identifies the metadata failure
- **AND** the host does not return partially parsed package data
