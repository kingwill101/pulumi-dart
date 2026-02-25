## ADDED Requirements

### Requirement: Handshake Initialization
The Dart language host MUST implement `Handshake` so that it records the engine address and starts health-check behavior required for long-running runtime sessions.

#### Scenario: Valid handshake request
- **WHEN** the engine sends a `LanguageHandshakeRequest` with a non-empty `engine_address`
- **THEN** the host stores the engine address
- **AND** the host starts health-check monitoring
- **AND** the host returns a successful `LanguageHandshakeResponse`

#### Scenario: Missing engine address
- **WHEN** the engine sends a handshake request without `engine_address`
- **THEN** the host returns an error

### Requirement: Operation Cancellation
The Dart language host MUST implement `Cancel` to terminate currently running `Run` or `RunPlugin` operations.

#### Scenario: Cancel active operation
- **GIVEN** a `Run` or `RunPlugin` operation is in progress
- **WHEN** `Cancel` is invoked
- **THEN** the host cancels the active operation context
- **AND** the operation exits promptly

### Requirement: Required Package Discovery
The Dart language host MUST implement `GetRequiredPackages` to derive Pulumi package dependencies from Dart project metadata.

#### Scenario: Pubspec contains Pulumi dependencies
- **GIVEN** a Dart project `pubspec.yaml` containing `pulumi_*` dependencies
- **WHEN** `GetRequiredPackages` is invoked with valid `ProgramInfo`
- **THEN** the host returns package dependencies with normalized resource package names and versions

#### Scenario: No pubspec found
- **WHEN** `GetRequiredPackages` is invoked and no `pubspec.yaml` can be located
- **THEN** the host returns an empty dependency list without failing
