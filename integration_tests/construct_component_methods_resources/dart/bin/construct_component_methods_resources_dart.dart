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

class TestComponent extends ComponentResource {
  TestComponent(String name, [ComponentResourceOptions? options])
    : super(
        'testcomponent:index:Component',
        name,
        null,
        options,
        remote: true,
      );

  Output<String> createRandom(Input<int> length) {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    final resultFuture = deployment
        .callWithResult<Map<String, dynamic>>(
          'testcomponent:index:Component/createRandom',
          {'length': length},
          self: this,
        )
        .then((result) => result['result'] as String);
    return outputFromFuture(resultFuture);
  }
}

class MyStack extends Stack {
  MyStack() {
    final component = TestComponent('component');
    registerOutputs({'result': component.createRandom(Input.fromValue(10))});
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
