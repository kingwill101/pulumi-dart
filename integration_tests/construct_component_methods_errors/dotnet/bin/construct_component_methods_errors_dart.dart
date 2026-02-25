import 'package:pulumi/pulumi.dart';

class TestComponent extends ComponentResource {
  TestComponent(String name, [ComponentResourceOptions? options])
      : super(
          'testcomponent:index:Component',
          name,
          null,
          options,
          remote: true,
        );

  Future<Map<String, dynamic>> getMessage(Input<String> echo) {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    return deployment.callWithResult<Map<String, dynamic>>(
      'testcomponent:index:Component/getMessage',
      {'echo': echo},
      self: this,
    );
  }
}

class MyStack extends Stack {
  MyStack() {
    final component = TestComponent('component');
    final result = component.getMessage(Input.fromValue('hello'));

    final deployment = DeploymentImpl.instance as DeploymentImpl;
    deployment.registerResourceOperation(result.then((_) {}));
  }
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() => MyStack());
  if (code != 0) {
    throw Exception('deployment failed');
  }
}
