import 'package:pulumi/pulumi.dart';

class TestComponent extends ComponentResource {
  TestComponent(String name, Input<int> children,
      [ComponentResourceOptions? options])
      : super(
          'testcomponent:index:Component',
          name,
          {'children': children},
          options,
          remote: true,
        );
}

class MyStack extends Stack {
  MyStack() {
    TestComponent('component', Input.fromValue(5));
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
