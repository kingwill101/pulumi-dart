import 'package:pulumi/pulumi.dart';

class Component extends ComponentResource {
  Component(String name, Input<String> foo, [ComponentResourceOptions? options])
      : super(
          'testcomponent:index:Component',
          name,
          {'foo': foo},
          options,
          remote: true,
        );
}

class MyStack extends Stack {
  MyStack() {
    Component('a', Input.fromValue('bar'));
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
