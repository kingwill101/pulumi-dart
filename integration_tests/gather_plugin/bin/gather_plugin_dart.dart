import 'package:pulumi/pulumi.dart';

class RandomResource extends CustomResource {
  RandomResource(
    String name,
    Input<int> length, [
    CustomResourceOptions? options,
  ]) : super(
          'testprovider:index:Random',
          name,
          {'length': length},
          options ?? CustomResourceOptions(),
        );
}

class RandomProvider extends ProviderResource {
  RandomProvider(String name, [CustomResourceOptions? options])
      : super('testprovider', name, {}, options ?? CustomResourceOptions());
}

class MyStack extends Stack {
  MyStack() {
    RandomResource(
      'default',
      Input.fromValue(10),
      CustomResourceOptions(
        pluginDownloadURL: 'get.example.test',
        version: '1.2.3',
      ),
    );

    final provider = RandomProvider(
      'explicit',
      CustomResourceOptions(pluginDownloadURL: 'get.pulumi.test/providers'),
    );

    RandomResource(
      'explicit',
      Input.fromValue(8),
      CustomResourceOptions(provider: provider, version: '1.2.3'),
    );
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
