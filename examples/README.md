# Dart Examples Porting Rules

This document defines the standard rule for porting Pulumi examples into Dart.

## Mapping rule

- Source examples are grouped by provider and language under:
  - `pulumi_examples/<provider>-<language>-<example>/`
- Dart ports must be created under:
  - `examples/<provider>/<example>/`

Examples:
- `pulumi_examples/aws-ts-secrets-manager/` -> `examples/aws/secrets-manager/`
- `pulumi_examples/gcp-py-network-component/` -> `examples/gcp/network-component/`

## AWSX mapping note

- `awsx` examples are maintained outside this repository at:
  - https://github.com/pulumi/pulumi-awsx/blob/master/examples/
- To start porting, clone that repository to a temp directory and copy the example sources into
  `examples/awsx`:

  ```bash
  TMP_DIR="$(mktemp -d)"
  git clone --depth 1 https://github.com/pulumi/pulumi-awsx.git "$TMP_DIR/pulumi-awsx"
  mkdir -p examples/awsx
  rsync -a --delete "$TMP_DIR/pulumi-awsx/examples/" examples/awsx/
  rm -rf "$TMP_DIR"
  ```

- Port those examples to Dart under:
  - `examples/awsx/<example>/`
- Create/maintain `examples/awsx/README.md` as the provider tracker while you convert examples from that repository.

## Porting requirements

- Stack/program logic must live in `lib/main.dart`.
- `bin/main.dart` must only launch the stack defined in `lib/main.dart`.
- Use Pulumi Dart value-conversion extensions consistently:
  - use `.input()` when passing concrete Dart values to `Input<T>`-typed args
  - use `.output()` when lifting literals into `Output<T>` where needed
  - preserve `Input/Output` flow for resource dependencies (do not downcast to plain values)
- Port full Pulumi program logic to Dart (no placeholder Pulumi program code).
- Keep required non-Pulumi assets from upstream example (app folders, Dockerfiles, static files, etc.).
- Each Dart example directory must include:
  - `Pulumi.yaml`
  - `pubspec.yaml`
  - `bin/main.dart`
  - `lib/main.dart`
- `Pulumi.yaml` must use Dart runtime with workspace resolution:
  - `runtime.name: dart`
  - `runtime.options.resolution: workspace`
- `pubspec.yaml` must include:
  - `resolution: workspace`
  - SDK constraint compatible with workspace policy

## README porting rules

- Preserve the upstream README intent and operational detail; do not replace with generic placeholder text once the example is runnable.
- Update all language/runtime instructions to Dart (`pulumi up` with Dart project layout, Dart-specific prerequisites).
- Update all template/repository links to this repository:
  - `https://github.com/kingwill101/pulumi-dart/...`
- Do not include template links or instructions for other languages in Dart example READMEs.
- Mention other languages only when the example explicitly requires a cross-stack/cross-language scenario.
- Keep config keys, outputs, and commands accurate for the Dart port.

## Consistency and status

- Start by catologing all the examples for said provider, create a markdown file to track them and check them off once resolved.
- Start by cataloging all source examples for the provider.
- Create/update a provider tracker markdown under `examples/<provider>/README.md`.
- Use checkboxes and mark each example as resolved only when the Dart port is runnable.
- When multiple efforts are active, mark catalog items as `in progress` (and optionally reserved/owner) until they are fully resolved.
- Keep provider-level status docs up to date (for example `examples/gcp/README.md`).
- Do not imply runnable status for placeholder examples.

## Common pitfalls

- Putting infrastructure logic in `bin/main.dart` instead of `lib/main.dart`.
- Incorrect `Input/Output` wiring (missing `.input()`/`.output()` usage or forcing plain values where Pulumi outputs are required).
- Leaving old `runtime` forms in `Pulumi.yaml` instead of Dart workspace runtime settings.
- Keeping stale upstream links (`pulumi/examples`) instead of this repository links.
- Leaving language-specific setup text from TypeScript/Python/Go/C# in Dart READMEs.
- Porting only resource shells and omitting required non-Pulumi assets (app code, Docker files, manifests).
- Marking tracker items as resolved before the Dart directory structure and runnable code are complete.

## Adoption note

These rules adopt and generalize the process already used in `examples/gcp/README.md`.
