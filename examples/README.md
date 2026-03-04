# Dart Examples Consolidation and Porting Rules

This document defines how to consolidate examples to Dart under `examples/` and how to port source examples from `thirdparty/pulumi_examples/`.

## Consolidation target

- Canonical Dart examples live only under `examples/`.
- Source material comes from:
  - `thirdparty/pulumi_examples/` for providers with upstream example repos mirrored locally.
  - `thirdparty/pulumi-awsx/` for AWSX examples.
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
- `thirdparty/pulumi-dotnet/`

## Package coverage and port sources

The workspace currently includes SDKs under `packages/sdks/`. Use this mapping when porting.

### Directly sourced from `thirdparty/pulumi_examples/`

- `alicloud` -> source prefix `alicloud-`
- `aws` -> source prefix `aws-`
- `aws-apigateway` -> source prefix `aws-apigateway-`
- `azure` -> source prefixes `azure-` and `classic-azure-` as needed
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
- `docker-build`:
  - source examples currently align with `dockerbuildcloud-*` patterns in `pulumi_examples/`
  - destination root: `examples/docker-build/`

### No direct `thirdparty/pulumi_examples` source set today

These packages still need Dart-first examples, but they are not primarily sourced from `pulumi_examples` right now:

- `azure-native`
- `azuread`
- `command`
- `eks`
- `gcp-global-cloudrun`
- `google-native`
- `hcloud`
- `mysql`
- `newrelic`
- `postgresql`
- `pulumiservice`
- `terraform`
- `tls`

## How to catalog a provider before porting

- Create or update `examples/<provider>/README.md` as the tracker.
- Add a checklist item per source example.
- Mark status as:
  - `todo`
  - `in progress`
  - `done` only when runnable as Dart

Useful source listing commands:

```bash
# Standard provider examples
find thirdparty/pulumi_examples -mindepth 1 -maxdepth 1 -type d -name 'aws-*' | sort

# Sub-provider examples
find thirdparty/pulumi_examples -mindepth 1 -maxdepth 1 -type d -name 'aws-apigateway-*' | sort
```

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
