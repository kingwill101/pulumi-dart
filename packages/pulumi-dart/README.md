# Pulumi for Dart

`pulumi` is the core SDK for building infrastructure with Pulumi and Dart.

This package provides the runtime primitives used by Pulumi programs and by
generated provider SDKs.

## Requirements

- Dart SDK `>=3.11.0 <4.0.0`
- Pulumi CLI
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

## Install the Dart language host

This package ships a small helper CLI for installing `pulumi-language-dart`:

```bash
dart pub global activate pulumi
pulumi-dart install-language-host
```

Useful options:

```bash
pulumi-dart install-language-host --version v3.0.0
pulumi-dart install-language-host --install-dir "$HOME/bin"
pulumi-dart install-language-host --repo kingwill101/pulumi-dart
```

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
- [`integration_tests/provider_authoring/dart/bin/provider_plugin.dart`](../integration_tests/provider_authoring/dart/bin/provider_plugin.dart)

## More examples

- raw invoke example:
  - [`example/raw_invoke_example.dart`](example/raw_invoke_example.dart)
- raw provider/custom resource example:
  - [`example/pulumi_dart_example.dart`](example/pulumi_dart_example.dart)

## Repository

- source:
  - <https://github.com/kingwill101/pulumi-dart>
- issue tracker:
  - <https://github.com/kingwill101/pulumi-dart/issues>

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

## Development

```bash
dart pub get
dart analyze
dart test
```
