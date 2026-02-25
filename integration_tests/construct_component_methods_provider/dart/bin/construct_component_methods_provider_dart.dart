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

class TestProvider extends ProviderResource {
  TestProvider(String name)
    : super('testprovider', name, null, CustomResourceOptions());
}

class Component extends ComponentResource {
  Component(
    String name,
    Input<String> first,
    Input<String> second, [
    ComponentResourceOptions? options,
  ]) : super(
         'testcomponent:index:Component',
         name,
         {'first': first, 'second': second},
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
    final testProvider = TestProvider('testProvider');

    final component1 = Component(
      'component1',
      Input.fromValue('Hello'),
      Input.fromValue('World'),
      ComponentResourceOptions(provider: testProvider),
    );

    final component2 = Component(
      'component2',
      Input.fromValue('Hi'),
      Input.fromValue('There'),
      ComponentResourceOptions(providers: [testProvider]),
    );

    registerOutputs({
      'message1': component1.getMessage(Input.fromValue('Alice')),
      'message2': component2.getMessage(Input.fromValue('Bob')),
    });
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
