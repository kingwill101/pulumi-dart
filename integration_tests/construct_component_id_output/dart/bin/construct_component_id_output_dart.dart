import 'package:pulumi/pulumi.dart';

class Component extends ComponentResource {
  late final Output<String> id;

  Component(String name, Input<String> idInput,
      [ComponentResourceOptions? opts])
      : super(
          'testcomponent:index:Component',
          name,
          {'id': idInput},
          opts,
          remote: true,
        ) {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    id = urn.apply((resourceUrn) async {
      final resource = await deployment.invoke<Map<String, dynamic>>(
        'pulumi:pulumi:getResource',
        {'urn': resourceUrn},
      );
      final state = resource['state'] as Map<String, dynamic>;
      return state['id'] as String;
    });
  }
}

class MyStack extends Stack {
  MyStack() {
    final componentA = Component('a', Input.fromValue('hello'));
    registerOutputs({'id': componentA.id});
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
