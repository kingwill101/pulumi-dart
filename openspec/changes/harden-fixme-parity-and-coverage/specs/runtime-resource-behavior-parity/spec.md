## MODIFIED Requirements

### Requirement: Package Reference Plumbing
The Dart runtime MUST support package registration and package reference propagation across invoke, call, and resource registration paths, and MUST surface deterministic failures when package registration cannot be resolved.

#### Scenario: Register package for invoke and call
- **WHEN** an invoke or call request includes `registerPackageRequest`
- **THEN** the runtime registers the package with the monitor
- **AND** forwards the returned `packageRef` in the corresponding monitor RPC.

#### Scenario: Package registration fails
- **WHEN** package registration returns an error for an invoke, call, or resource registration path
- **THEN** the runtime returns a surfaced error to the caller with provider and package context
- **AND** does not continue with a monitor RPC that requires `packageRef`.

### Requirement: Lifecycle Option Forwarding
The Dart runtime MUST forward lifecycle options that affect engine and provider behavior, including `ignoreChanges`, and MUST preserve option semantics for nested property paths.

#### Scenario: ignoreChanges is forwarded
- **WHEN** a resource is registered with `ResourceOptions.ignoreChanges`
- **THEN** `RegisterResourceRequest.ignoreChanges` includes all configured property paths
- **AND** the request preserves path ordering deterministically for stable test assertions.

#### Scenario: Invalid lifecycle option path
- **WHEN** a lifecycle option includes an invalid or unsupported property path format
- **THEN** the runtime returns a validation error before issuing registration
- **AND** no partial option forwarding occurs.

### Requirement: Transform Callback Support
The Dart runtime MUST implement resource and stack invoke transform callback flows used by modern Pulumi transform APIs and MUST not leave production transform execution paths as TODO or `UnimplementedError`.

#### Scenario: Resource transform callback executes
- **WHEN** a resource transform callback is registered and a matching resource is registered
- **THEN** callback invocation returns transformed properties and options
- **AND** transformed values are the values sent in registration RPC payloads.

#### Scenario: Transform callback throws or returns invalid data
- **WHEN** a resource or stack invoke transform callback throws, times out, or returns malformed data
- **THEN** the runtime emits an actionable transform failure error
- **AND** the operation fails without panicking or hanging.
