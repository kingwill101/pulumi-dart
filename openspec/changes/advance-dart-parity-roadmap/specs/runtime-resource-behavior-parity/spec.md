## ADDED Requirements

### Requirement: Package Reference Plumbing
The Dart runtime MUST support package registration and package references across invoke, call, and resource registration paths.

#### Scenario: Register package for invoke/call
- **WHEN** an invoke or call request includes `registerPackageRequest`
- **THEN** the runtime registers the package with the monitor
- **AND** forwards the resulting `packageRef` to the monitor RPC

#### Scenario: Register package for resource registration
- **WHEN** a resource registration includes `registerPackageRequest`
- **THEN** the runtime resolves and forwards `packageRef` in `RegisterResourceRequest`

### Requirement: Lifecycle Option Forwarding
The Dart runtime MUST forward lifecycle options that affect engine/provider behavior, including `ignoreChanges`.

#### Scenario: ignoreChanges set on resource options
- **WHEN** a resource is registered with `ResourceOptions.ignoreChanges`
- **THEN** `RegisterResourceRequest.ignoreChanges` includes those property paths

### Requirement: Transform Callback Support
The Dart runtime MUST implement resource and stack invoke transform callback flows used by modern Pulumi transform APIs.

#### Scenario: Resource transform callback executes
- **WHEN** a resource transform callback is registered
- **THEN** callback invocation returns transformed properties/options without throwing `UnimplementedError`

#### Scenario: Stack invoke transform callback executes
- **WHEN** a stack invoke transform callback is registered
- **THEN** callback invocation returns transformed invoke arguments/options without throwing `UnimplementedError`

### Requirement: Stack Output Persistence on Failure Paths
The Dart runtime MUST preserve and register stack outputs according to Pulumi engine semantics when updates fail.

#### Scenario: Program error after partial output updates
- **GIVEN** a successful baseline deployment with stack outputs
- **WHEN** a subsequent update changes one stack output and the program then fails
- **THEN** the changed output is persisted
- **AND** unchanged outputs retain prior values

#### Scenario: Resource failure before and after stack output readiness
- **GIVEN** a successful baseline deployment with stack outputs
- **WHEN** a subsequent update fails before stack outputs can be fully resolved
- **THEN** prior stack output values remain unchanged
- **WHEN** a later failing update sets concrete stack outputs before resource failure
- **THEN** those updated stack outputs are persisted
