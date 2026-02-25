import 'package:pulumi/pulumi.dart';

class Component extends ComponentResource {
  Component(String name, [ComponentResourceOptions? options])
      : super('testcomponent:index:Component', name, null, options,
            remote: true);
}

class MyStack extends Stack {
  MyStack() {
    Component('a');
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
