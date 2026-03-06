import 'package:pulumi/pulumi.dart';

class Child extends ComponentResource {
  Child(String name, Input<String> message, [ComponentResourceOptions? options])
      : super(
          'test:index:Child',
          name,
          {'message': message},
          options,
        ) {
    registerOutputs({'message': message});
  }
}

class Container extends ComponentResource {
  Container(String name, Input<Child> child,
      [ComponentResourceOptions? options])
      : super(
          'test:index:Container',
          name,
          {'child': child},
          options,
        ) {
    registerOutputs({'child': child});
  }
}

class MyStack extends Stack {
  MyStack() {
    final child = Child('mychild', Input.fromValue('hello world!'));
    final container = Container('mycontainer', Input.fromValue(child));

    final deployment = DeploymentImpl.instance as DeploymentImpl;
    final validation =
        Output.tuple(child.urn, container.urn).apply((tuple) async {
      final childUrn = tuple.$1;
      final containerUrn = tuple.$2;

      final containerState = await deployment.invoke<Map<String, dynamic>>(
        'pulumi:pulumi:getResource',
        {'urn': containerUrn},
      );
      final state = containerState['state'] as Map<String, dynamic>;
      final childRef = state['child'] as Map<String, dynamic>;
      final actualUrn = childRef['urn'] as String?;

      if (actualUrn != childUrn) {
        throw Exception(
          "Expected urn '$childUrn' not equal to actual urn '$actualUrn'.",
        );
      }

      final childState = await deployment.invoke<Map<String, dynamic>>(
        'pulumi:pulumi:getResource',
        {'urn': actualUrn},
      );
      final childMessage =
          (childState['state'] as Map<String, dynamic>)['message'] as String?;
      if (childMessage != 'hello world!') {
        throw Exception(
          "Expected message 'hello world!' not equal to actual message '$childMessage'.",
        );
      }

      return true;
    });

    deployment.registerResourceOperation(validation.getData().then((_) {}));
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
