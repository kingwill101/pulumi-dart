import 'package:pulumi/pulumi.dart';

Output<T> outputFromFuture<T>(Future<T> future) {
  return Output(
    future.then(
      (value) => OutputData<T>(
        value: value,
        isKnown: true,
        isSecret: false,
        resources: {},
      ),
    ),
  );
}

class Random extends CustomResource {
  Random(String name, Input<int> length, [CustomResourceOptions? options])
      : super(
          'testprovider:index:Random',
          name,
          {'length': length},
          options ?? CustomResourceOptions(),
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
    final random = Random('resource', Input.fromValue(10));
    final component = TestComponent('component');

    final resultFuture = component.getMessage(
      Input.fromOutput(random.id.apply((id) => '$id')),
    );

    final resultOutput = outputFromFuture(resultFuture).apply((result) {
      throw Exception('should not run (result)');
    });

    registerOutputs({'result': resultOutput});
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
