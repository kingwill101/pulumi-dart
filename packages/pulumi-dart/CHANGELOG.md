## Unreleased

- Preserve provider properties whose names begin with `__` during serialization.
- Refresh the Pulumi RPC protocol and add `CustomTimeouts.read` support across
  resource options, transforms, provider authoring, and policy types.
- Add typed `Output.recover` error recovery with Pulumi metadata propagation.
- Generate positional invoke signatures for schemas using
  `multiArgumentInputs`.
- Support extension-parameterized provider packages and deduplicate package
  registration within a deployment.

## 3.0.0

- First stable release of the Pulumi core SDK for Dart.
- Provides the core Pulumi runtime model for Dart programs:
  - `Deployment`, `Stack`, `Config`
  - `Input`, `Output`, input collections, unions, and invoke helpers
  - `Resource`, `CustomResource`, `ComponentResource`, `ProviderResource`
  - assets, archives, stack references, aliases, and resource options
- Includes Automation API support for driving Pulumi CLI workflows from Dart.
- Includes provider authoring APIs for custom providers and component methods.
- Includes dynamic resource authoring APIs.
- Ships generated Pulumi RPC bindings required by the Dart runtime.
- Refreshes package metadata and documentation for release publication.

## 0.0.1-dev

- Initial version.
