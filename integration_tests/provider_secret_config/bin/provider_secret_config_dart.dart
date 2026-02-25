import 'package:pulumi/pulumi.dart';

class TestProvider extends ProviderResource {
  TestProvider(String name)
    : super('testprovider', name, {
        'secretProperty': Input.fromOutput(
          Output.createSecret(Output.create("it's a secret to everybody")),
        ),
      }, CustomResourceOptions());
}

class RandomResource extends CustomResource {
  RandomResource(String name, [CustomResourceOptions? options])
    : super(
        'testprovider:index:Random',
        name,
        {'length': Input.fromValue(8)},
        options ?? CustomResourceOptions(),
      );
}

class MyStack extends Stack {
  MyStack() {
    final provider = TestProvider('p');
    final resource = RandomResource('r', CustomResourceOptions(provider: provider));

    registerOutputs({'resourceUrn': resource.urn});
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
