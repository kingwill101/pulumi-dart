import 'package:pulumi/pulumi.dart';

class Component extends ComponentResource {
  Component(String name, [ComponentResourceOptions? options])
      : super(
          'testcomponent:index:Component',
          name,
          null,
          options,
          remote: true,
        );
}

class RandomProvider extends ProviderResource {
  RandomProvider(String name, [CustomResourceOptions? options])
      : super('testprovider', name, {}, options);
}

class MyStack extends Stack {
  MyStack() {
    final explicitProvider = RandomProvider('explicit');

    Component('uses_default');
    Component(
      'uses_provider',
      ComponentResourceOptions(providers: [explicitProvider]),
    );
    Component(
      'uses_providers',
      ComponentResourceOptions(providers: [explicitProvider]),
    );

    // Dart currently models only list-style providers in ResourceOptions.
    Component(
      'uses_providers_map',
      ComponentResourceOptions(providers: [explicitProvider]),
    );
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
