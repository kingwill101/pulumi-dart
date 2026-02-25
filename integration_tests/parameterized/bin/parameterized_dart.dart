import 'package:pulumi/pulumi.dart';

class EchoResource extends CustomResource {
  EchoResource(String name, Input<dynamic> echo, [CustomResourceOptions? options])
      : super(
          'testprovider:index:Echo',
          name,
          {'echo': echo},
          options ?? CustomResourceOptions(),
        );
}

class MyStack extends Stack {
  MyStack() {
    final customA = EchoResource('a', Input.fromValue(42));
    final deployment = DeploymentImpl.instance as DeploymentImpl;

    final echoA = customA.urn.apply((urn) async {
      final result = await deployment.invoke<Map<String, dynamic>>(
        'pulumi:pulumi:getResource',
        {'urn': urn},
      );
      final state = result['state'] as Map<String, dynamic>;
      return state['echo'];
    });

    registerOutputs({'echoA': echoA});
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
