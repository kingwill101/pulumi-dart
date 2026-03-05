# Pulumi Dart

Community Pulumi support for Dart.

## Table Of Contents

- [Quickstart](#quickstart)
- [Templates](#templates)
- [Generate Provider SDKs](#generate-provider-sdks)
- [Contributing](#contributing)

## Quickstart

### 1) Install Pulumi CLI

```bash
curl -fsSL https://get.pulumi.com | sh
pulumi version
```

### 2) Install `pulumi-language-dart`

```bash
curl -fsSL https://raw.githubusercontent.com/pulumi/pulumi-dart/main/scripts/install-pulumi-language-dart.sh | bash
which pulumi-language-dart
pulumi-language-dart -help
```

### 3) Create a Pulumi Dart project

Recommended: use the maintained template:

```bash
pulumi new https://github.com/pulumi/pulumi-dart/tree/main/templates/dart-minimal -y --name pulumi-dart-quickstart --stack dev --secrets-provider passphrase
```

or locally from a clone:

```bash
pulumi new ./templates/dart-minimal -y --name pulumi-dart-quickstart --stack dev --secrets-provider passphrase
```

Manual setup (for customization) is still supported:

```bash
mkdir pulumi-dart-quickstart
cd pulumi-dart-quickstart
mkdir -p bin
```

Create `Pulumi.yaml`:

```yaml
name: pulumi-dart-quickstart
runtime: dart
description: First Pulumi Dart stack
```

Create `pubspec.yaml`:

```yaml
name: pulumi_dart_quickstart
publish_to: none
version: 0.1.0

environment:
  sdk: ">=3.11.0 <4.0.0"

dependencies:
  pulumi:
    git:
      url: https://github.com/pulumi/pulumi-dart.git
      path: pulumi-dart
  pulumi_random:
    git:
      url: https://github.com/pulumi/pulumi-dart.git
      path: packages/random
```

Create `bin/pulumi_dart_quickstart.dart`:

```dart
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_random/index.dart' as random;

class QuickstartStack extends Stack {
  QuickstartStack() {
    final pet = random.RandomPet(
      'pet',
      args: random.RandomPetArgs(prefix: 'dart'),
    );

    registerOutputs({'petName': pet.id});
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => QuickstartStack());
}
```

Install dependencies:

```bash
dart pub get
```

### 4) Preview and deploy

```bash
pulumi stack init dev
pulumi preview
pulumi up
```

Destroy when done:

```bash
pulumi destroy
```

## Templates

User-facing templates live under [`templates/`](templates/README.md).

By default, `pulumi-language-dart` rewrites unresolved `pulumi` dependency constraints
during `pulumi new` to a known source dependency so clean-environment installs work.

`pulumi` dependency source precedence (outside a Dart workspace):

1. `PULUMI_DART_PULUMI_DEPENDENCY_PATH`
2. `PULUMI_DART_PULUMI_DEPENDENCY_VERSION`
3. Git dependency (`PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL` / `..._GIT_PATH` / `..._GIT_REF`)

When SDK generation runs inside a Dart workspace and workspace resolution is active,
generated provider packages use the workspace `pulumi` package version directly.

You can override source selection with:

- `PULUMI_DART_PULUMI_DEPENDENCY_PATH`
- `PULUMI_DART_PULUMI_DEPENDENCY_VERSION`
- `PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV` (default: `true`)
- `PULUMI_DART_PULUMI_DEPENDENCY_PUBDEV_URL` (default: `https://pub.dev/api/packages/pulumi`)
- `PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL`
- `PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH`
- `PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF`
- `PULUMI_DART_TEMPLATE_REWRITE_PULUMI=false` to disable rewrite

Useful non-workspace examples:

```bash
# Pin to explicit version
export PULUMI_DART_PULUMI_DEPENDENCY_VERSION=0.0.1-dev

# Or read latest published pub.dev version dynamically
export PULUMI_DART_PULUMI_DEPENDENCY_VERSION="$(curl -fsSL https://pub.dev/api/packages/pulumi | jq -r '.latest.version')"
```

## Generate Provider SDKs

In this repo, generated providers live under `packages/<provider>`.

```bash
curl -fsSL https://raw.githubusercontent.com/pulumi/pulumi-dart/main/scripts/install-pulumi-language-dart.sh | bash

mkdir -p sdk-gen && cd sdk-gen
```

Create `Pulumi.yaml`:

```yaml
name: sdk-gen
runtime: dart
```

Create `pubspec.yaml`:

```yaml
name: sdk_gen
publish_to: none
version: 0.0.1
environment:
  sdk: ">=3.11.0 <4.0.0"

dependencies:
  pulumi: any

dependency_overrides:
  pulumi:
    path: /abs/path/to/pulumi-dart/pulumi-dart
```

Install dependencies:

```bash
dart pub get
```

Generate one or more provider packages:

```bash
pulumi package add random
pulumi package add aws@7.11.0
pulumi package add ./path/to/provider.schema.json
```

Generated output appears in `sdks/<provider>`. Copy or move that directory into `packages/<provider>` as needed.

If your workspace already contains the provider package, add it to your workspace `pubspec.yaml`
and consume it directly without `path` overrides:

```yaml
workspace:
  - packages/command

dependencies:
  pulumi_command: ^1.0.0
```

Then consume it from your app:

```yaml
dependencies:
  pulumi_random:
    path: /abs/path/to/sdk-gen/sdks/random
```

Full details: [`packages/README.md`](packages/README.md)

## Contributing

Contributor workflows and helper file references are in [`CONTRIBUTING.md`](CONTRIBUTING.md).
