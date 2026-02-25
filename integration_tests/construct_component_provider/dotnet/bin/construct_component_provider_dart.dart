import 'package:pulumi/pulumi.dart';

class TestProvider extends ProviderResource {
  TestProvider(String name, Input<String> message)
      : super(
          'testcomponent',
          name,
          {'message': message},
          CustomResourceOptions(),
        );
}

class TestComponent extends ComponentResource {
  TestComponent(String name, [ComponentResourceOptions? options])
      : super(
          'testcomponent:index:Component',
          name,
          null,
          options,
          remote: true,
        );
}

class MyStack extends Stack {
  MyStack() {
    final provider = TestProvider('myprovider', Input.fromValue('hello world'));
    final component = TestComponent(
      'mycomponent',
      ComponentResourceOptions(providers: [provider]),
    );

    final deployment = DeploymentImpl.instance as DeploymentImpl;
    final message = component.urn.apply((urn) async {
      final resource = await deployment.invoke<Map<String, dynamic>>(
        'pulumi:pulumi:getResource',
        {'urn': urn},
      );
      final state = resource['state'] as Map<String, dynamic>;
      return state['message'] as String;
    });

    registerOutputs({'message': message});
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
