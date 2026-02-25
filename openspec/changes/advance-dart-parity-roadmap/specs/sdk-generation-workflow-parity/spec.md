## ADDED Requirements

### Requirement: Program Generation RPC
The Dart language host MUST implement `GenerateProgram` and return compilable Dart sources for engine-initiated program generation requests.

#### Scenario: Generate basic program source
- **WHEN** `GenerateProgram` is invoked with source inputs
- **THEN** the host returns a source map that includes `main.dart`
- **AND** the generated entrypoint is runnable with the Pulumi Dart runtime

### Requirement: Project Generation RPC
The Dart language host MUST implement `GenerateProject` and produce a usable Dart Pulumi project scaffold.

#### Scenario: Generate project scaffold
- **WHEN** `GenerateProject` is invoked with a target directory and project metadata
- **THEN** the host writes `Pulumi.yaml`
- **AND** writes a valid `pubspec.yaml`
- **AND** writes a runnable `bin/<project>.dart` entrypoint

### Requirement: Package Archive RPC
The Dart language host MUST implement `Pack` to produce a distributable archive from a generated package directory.

#### Scenario: Pack generated package
- **WHEN** `Pack` is invoked with a package directory and destination directory
- **THEN** the host writes a `.tar.gz` artifact containing package files
- **AND** returns the artifact path

### Requirement: Schema-Driven Package Generation
`GeneratePackage` MUST produce schema-driven Dart SDK outputs (resources, invokes/functions, types, and exports) sufficient for practical provider consumption.

#### Scenario: Generate usable provider SDK
- **WHEN** `GeneratePackage` is invoked with a provider schema
- **THEN** generated Dart outputs include typed resource and function surfaces
- **AND** the generated SDK can be consumed by integration fixtures without manual source edits
