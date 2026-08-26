# Pulumi for Dart

`pulumi` is the core SDK for defining and managing infrastructure in Dart. It
provides the runtime primitives used by Pulumi programs, generated provider
SDKs, Automation API clients, dynamic resources, and Dart-authored providers.

> [!IMPORTANT]
> A Dart Pulumi project needs both this package and the
> `pulumi-language-dart` executable. The Pulumi CLI starts the language host to
> load and run your Dart program.

## Contents

- [Requirements](#requirements)
- [Install](#install)
- [Install the Dart language host](#install-the-dart-language-host)
- [Minimal Pulumi program](#minimal-pulumi-program)
- [Example with a provider SDK](#example-with-a-provider-sdk)
- [Running with Pulumi CLI](#running-with-pulumi-cli)
- [Core concepts](#core-concepts)
  - [`Input` and `Output`](#input-and-output)
  - [`Stack`](#stack)
  - [`Config`](#config)
  - [`ResourceOptions`](#resourceoptions)
- [Additional libraries in this package](#additional-libraries-in-this-package)
  - [Automation API](#automation-api)
  - [Dynamic resource APIs](#dynamic-resource-apis)
  - [Provider authoring APIs](#provider-authoring-apis)
- [More examples](#more-examples)
- [Using generated provider SDKs directly from Git](#using-generated-provider-sdks-directly-from-git)
- [Development and upstream fixtures](#development-and-upstream-fixtures)
- [Repository and support](#repository-and-support)

## Requirements

- Dart SDK `>=3.11.0 <4.0.0`
- [Pulumi CLI](https://www.pulumi.com/docs/iac/download-install/)
- `pulumi-language-dart` available on your `PATH`

## Install

Add the runtime package:

```bash
dart pub add pulumi
```

Add a provider SDK as needed:

```bash
dart pub add pulumi_random
```

Verify all three parts of the toolchain before creating a stack:

```bash
dart --version
pulumi version
pulumi-language-dart -help
```

## Install the Dart language host

Install the latest language-host release for your operating system and
architecture:

```bash
curl -fsSL https://raw.githubusercontent.com/kingwill101/pulumi-dart/pulumi-v3.1.0/scripts/install-pulumi-language-dart.sh | bash
```

The script downloads the host built by the repository's release workflow and
installs it to `$HOME/.local/bin`. Add that directory to `PATH` if needed:

```bash
export PATH="$HOME/.local/bin:$PATH"
pulumi-language-dart -help
```

This package also ships a helper CLI that runs the same installer:

```bash
dart pub global activate pulumi
pulumi-dart install-language-host
```

Pub-generated executable launchers require `dart` to be available on `PATH`.
A shell alias such as `alias dart="fvm dart"` is not inherited by the launcher.
When using FVM, run the installed command in FVM's SDK environment instead:

```bash
fvm exec pulumi-dart install-language-host
```

Alternatively, invoke the package executable directly through FVM:

```bash
fvm dart pub global run pulumi:pulumi_dart install-language-host
```

Useful options:

```bash
pulumi-dart install-language-host --version v3.0.0
pulumi-dart install-language-host --install-dir "$HOME/bin"
pulumi-dart install-language-host --repo kingwill101/pulumi-dart
pulumi-dart install-language-host --ref pulumi-v3.1.1
```

By default, the CLI downloads the installer from its own immutable package
release tag. Set `PULUMI_DART_INSTALLER_REF` or pass `--ref` to test another
tag or branch; `--ref` takes precedence.

## Minimal Pulumi program

```dart
import 'package:pulumi/pulumi.dart';

class MyStack extends Stack {
  late final Output<Object?> message;

  MyStack() {
    final config = Config();
    final name = config.get('name') ?? 'world';
    message = Output.create<Object?>('hello-$name');
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return [OutputProperty('message', message)];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => MyStack());
}
```

## Example with a provider SDK

```dart
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_random/index.dart' as random;

class AppStack extends pulumi.Stack {
  late final pulumi.Output<Object?> petName;

  AppStack() {
    final pet = random.RandomPet(
      'pet',
      args: random.RandomPetArgs(prefix: 'dart'),
    );
    petName = pet.id;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('petName', petName)];
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => AppStack());
}
```

## Running with Pulumi CLI

After creating a Pulumi project and adding dependencies:

```bash
pulumi stack init dev
pulumi config set name dart
pulumi preview
pulumi up
```

Destroy when finished:

```bash
pulumi destroy
```

If Pulumi reports that it cannot find the Dart language plugin, confirm that
`pulumi-language-dart` is executable and visible in the same process `PATH` as
the `pulumi` command:

```bash
command -v pulumi-language-dart
pulumi-language-dart -help
```

## Core concepts

### `Input` and `Output`

- Use `Input<T>` for resource arguments that can accept either plain values or
  computed values from other resources.
- Use `Output<T>` for values produced by resources and invokes.
- Compose outputs with `apply`, `Output.tuple`, and the collection helpers
  instead of trying to extract values eagerly.

### `Stack`

- A Pulumi Dart program typically defines one `Stack` subclass.
- Resources are created in the constructor.
- Exported stack outputs are returned from `getOutputProperties()`.

### `Config`

- `Config()` reads values from the current project namespace.
- `Config('pkg')` targets another namespace.
- Use `require`, `getBoolean`, `getNumber`, and related helpers to validate
  config at the edge of your program.

### `ResourceOptions`

Use `ResourceOptions` to control:

- `parent`
- `dependsOn`
- `provider`
- `protect`
- `ignoreChanges`
- `deleteBeforeReplace`
- aliases, transforms, and hooks for advanced component/library code

## Additional libraries in this package

### Automation API

Import:

```dart
import 'package:pulumi/automation.dart' as automation;
```

Use it to drive Pulumi CLI workflows from Dart applications.

See [`example/automation_cli_example.dart`](example/automation_cli_example.dart).

### Dynamic resource APIs

Import:

```dart
import 'package:pulumi/dynamic.dart' as dynamic;
```

Use this when you need provider-like behavior inside a Pulumi program without
publishing a separate provider plugin.

See [`example/dynamic_resource_example.dart`](example/dynamic_resource_example.dart).

### Provider authoring APIs

Import:

```dart
import 'package:pulumi/provider.dart';
```

Use this when you are implementing a Pulumi provider plugin in Dart.

See:

- [`example/provider_authoring_example.dart`](example/provider_authoring_example.dart)
- [`integration_tests/provider_authoring/dart/bin/provider_plugin.dart`](../../integration_tests/provider_authoring/dart/bin/provider_plugin.dart)

## More examples

- raw invoke example:
  - [`example/raw_invoke_example.dart`](example/raw_invoke_example.dart)
- raw provider/custom resource example:
  - [`example/pulumi_dart_example.dart`](example/pulumi_dart_example.dart)

## Using generated provider SDKs directly from Git

This repository houses generated provider SDK packages under:

- `packages/sdks/<provider>/`

Examples:

- `packages/sdks/random/`
- `packages/sdks/aws/`
- `packages/sdks/gcp/`

If a provider package has not been published to pub.dev yet, you can depend on
it directly from this repository.

Example:

```yaml
dependencies:
  pulumi:
    git:
      url: https://github.com/kingwill101/pulumi-dart.git
      path: packages/pulumi-dart
  pulumi_random:
    git:
      url: https://github.com/kingwill101/pulumi-dart.git
      path: packages/sdks/random
```

This is the recommended approach for unreleased or not-yet-published provider
SDKs while the initial pub.dev release set is still intentionally small.

## Development and upstream fixtures

```bash
dart pub get
dart analyze
dart test
```

Changes to the core SDK, language host, or code generator may also require
refreshing language conformance fixtures from the pinned Pulumi upstream
submodule. From the repository root, audit upstream drift before regenerating
fixtures:

```bash
repodoc upstream:check --core-only
repodoc upstream:check --details
```

Regenerate a single affected conformance case first, then the full supported
fixture set. Generated snapshots live in
`pulumi-language-dart/testdata/published` and must not be edited by hand. The
complete commands and review checklist are documented in the repository's
[upstream drift and test fixtures](../../README.md#upstream-drift-and-test-fixtures)
section and in [`CONTRIBUTING.md`](../../CONTRIBUTING.md#generate-language-conformance-testdata).

## Repository and support

- [Source repository](https://github.com/kingwill101/pulumi-dart)
- [Issue tracker](https://github.com/kingwill101/pulumi-dart/issues)
- [Contributing guide](../../CONTRIBUTING.md)
