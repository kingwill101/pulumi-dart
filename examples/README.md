# Dart Examples Consolidation and Porting Rules

This document defines how to consolidate examples to Dart under `examples/` and how to port source examples from `thirdparty/pulumi_examples/` and other upstream `thirdparty/` repos.

## Consolidation target

- Canonical Dart examples live only under `examples/`.
- Source material comes from:
  - `thirdparty/pulumi_examples/` for providers with upstream example repos mirrored locally.
  - `thirdparty/pulumi-awsx/` for AWSX examples.
  - `thirdparty/pulumi-automation-api-examples/` for Automation API examples.
  - Other `thirdparty/` repos when a provider example is not present in `thirdparty/pulumi_examples/`.
- Every ported example should end as a runnable Dart project under:
  - `examples/<provider>/<example>/`

## Source-to-destination mapping

- Standard source form:
  - `thirdparty/pulumi_examples/<provider>-<language>-<example>/`
- Destination form:
  - `examples/<provider>/<example>/`
- Sub-provider source form:
  - `thirdparty/pulumi_examples/<provider>-<subprovider>-<language>-<example>/`
- Destination for sub-provider packages:
  - `examples/<provider>-<subprovider>/<example>/`

Examples:

- `thirdparty/pulumi_examples/aws-ts-secrets-manager/` -> `examples/aws/secrets-manager/`
- `thirdparty/pulumi_examples/gcp-py-network-component/` -> `examples/gcp/network-component/`
- `thirdparty/pulumi_examples/aws-apigateway-ts-routes/` -> `examples/aws-apigateway/routes/`

## Reference repositories (submodules)

- `thirdparty/pulumi/`
- `thirdparty/pulumi_examples/`
- `thirdparty/pulumi-aws/`
- `thirdparty/pulumi-awsx/`
- `thirdparty/pulumi-command/`
- `thirdparty/pulumi-automation-api-examples/`
- `thirdparty/pulumi-dotnet/`

## Package coverage and port sources

The workspace currently includes SDKs under `packages/sdks/`. Use this mapping when porting.

### Directly sourced from `thirdparty/pulumi_examples/`

- `alicloud` -> source prefix `alicloud-`
- `aws` -> source prefix `aws-`
- `aws-apigateway` -> source prefix `aws-apigateway-`
- `azure` -> source prefixes `azure-` and `classic-azure-` as needed
- `azure-native` -> source prefix `azure-` (ported examples use Azure Native resources)
- `digitalocean` -> source prefix `digitalocean-`
- `docker` -> source prefix `docker-`
- `f5bigip` -> source prefix `f5bigip-`
- `gcp` -> source prefix `gcp-`
- `kubernetes` -> source prefix `kubernetes-`
- `libvirt` -> source prefix `libvirt-`
- `linode` -> source prefix `linode-`
- `openstack` -> source prefix `openstack-`
- `policy` -> source prefix `policy-`
- `random` -> source prefix `random-`

### External source repositories

- `awsx`:
  - source repo: `https://github.com/pulumi/pulumi-awsx`
  - destination root: `examples/awsx/`
- `automation`:
  - source repo: `https://github.com/pulumi/automation-api-examples`
  - local source root: `thirdparty/pulumi-automation-api-examples/`
  - destination root: `examples/automation/`
- `command`:
  - source repo: `https://github.com/pulumi/pulumi-command`
  - local source root: `thirdparty/pulumi-command/examples/`
  - destination root: `examples/command/`
- `docker-build`:
  - source examples currently align with `dockerbuildcloud-*` patterns in `pulumi_examples/`
  - destination root: `examples/docker-build/`

### No direct `thirdparty/pulumi_examples` source set today

These packages still need Dart-first examples, but they are not primarily sourced from `pulumi_examples` right now:

- `aws-app-platform` (Dart-first foundation examples in `examples/aws-app-platform/`)
- `aws-faas` (Dart-first foundation examples in `packages/pulumi-dart-faas/examples/aws-faas/`)

## How to catalog a provider before porting

- Create or update `examples/<provider>/README.md` as the tracker.
- Add a checklist item per source example.
- Mark status as:
  - `todo`
  - `in progress`
  - `done` only when runnable as Dart and `dart analyze` is clean for that example

Useful source listing commands:

```bash
# Standard provider examples
find thirdparty/pulumi_examples -mindepth 1 -maxdepth 1 -type d -name 'aws-*' | sort

# Sub-provider examples
find thirdparty/pulumi_examples -mindepth 1 -maxdepth 1 -type d -name 'aws-apigateway-*' | sort
```

## Current backlog (as of March 4, 2026)

- `thirdparty/pulumi_examples` coverage is complete for currently tracked Dart providers except `azure`.
- `thirdparty/pulumi-command/examples` coverage is complete for tracked canonical scenarios under `examples/command/`.
- `aws`, `aws-apigateway`, `alicloud`, `digitalocean`, `docker`, `f5bigip`, `gcp`, `kubernetes`, `libvirt`, `openstack`, and `random` have no upstream-mapped gaps in the current inventory.
- `awsx` examples are fully mapped from `thirdparty/pulumi-awsx/examples` to `examples/awsx/`.
- `automation` has all core scenario families ported; language/test variants are not tracked as separate Dart examples.

- `azure` remaining scenarios to port from `thirdparty/pulumi_examples`:
- none (current tracked inventory complete)

- `automation` remaining upstream variants (not new scenario families):
- none (tracked as consolidated canonical examples)

## Porting requirements

- Stack/program logic must live in `lib/main.dart`.
- `bin/main.dart` must only launch the stack defined in `lib/main.dart`.
- Preserve Pulumi `Input`/`Output` typing and flow.
- Port full Pulumi program logic to Dart (no placeholder program shells).
- Keep required non-Pulumi assets from upstream example:
  - app folders
  - Dockerfiles
  - manifests
  - static content
- Each Dart example directory must include:
  - `Pulumi.yaml`
  - `pubspec.yaml`
  - `bin/main.dart`
  - `lib/main.dart`
- `Pulumi.yaml` must use Dart runtime workspace resolution:
  - `runtime.name: dart`
  - `runtime.options.resolution: workspace`
- `pubspec.yaml` must include:
  - `resolution: workspace`
  - workspace-compatible SDK constraint
- After porting each example, run `dart analyze` and resolve all reported issues before marking the example as complete.

## Automation example requirements

- Place each port under `examples/automation/<scenario>/`.
- Keep the Automation driver logic in `lib/main.dart`.
- Keep `bin/main.dart` as a thin launcher into `lib/main.dart`.
- For local-program scenarios, keep a nested Pulumi project fixture directory with its own:
  - `Pulumi.yaml`
  - `lib/main.dart`
  - `bin/main.dart`
- For inline-program scenarios, no nested Pulumi project directory is required.
- Preserve behavior parity with upstream scenario intent:
  - stack lifecycle flow (`up`, `preview`, `destroy`, `refresh`, `outputs`)
  - config and secret handling
  - workspace/project settings
  - error and diagnostics handling

## README rules for each example

- Preserve upstream README intent and operational detail.
- Rewrite commands and setup for Dart.
- Use repository links in this repo namespace.
- Remove other-language-only setup sections once Dart flow is authoritative.
- Keep config keys, outputs, and commands accurate for the Dart port.

## Common pitfalls

- Putting infrastructure logic in `bin/main.dart` instead of `lib/main.dart`.
- Breaking `Input`/`Output` flow by coercing values to plain Dart too early.
- Leaving old runtime settings in `Pulumi.yaml`.
- Keeping stale upstream links pointing outside this repository without context.
- Marking tracker items done before runnable validation.
