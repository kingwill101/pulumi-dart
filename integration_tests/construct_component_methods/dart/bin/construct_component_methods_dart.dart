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
  TestComponent(
    String name,
    Input<String> first,
    Input<String> second, [
    ComponentResourceOptions? options,
  ]) : super(
          'testcomponent:index:Component',
          name,
          {
            'first': first,
            'second': second,
          },
          options,
          remote: true,
        );

  Output<String> getMessage(Input<String> name) {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    final resultFuture = deployment
        .callWithResult<Map<String, dynamic>>(
          'testcomponent:index:Component/getMessage',
          {'name': name},
          self: this,
        )
        .then((result) => result['message'] as String);
    return outputFromFuture(resultFuture);
  }
}

class MyStack extends Stack {
  MyStack() {
    final component = TestComponent(
      'component',
      Input.fromValue('Hello'),
      Input.fromValue('World'),
    );

    registerOutputs({
      'message': component.getMessage(Input.fromValue('Alice')),
    });
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
