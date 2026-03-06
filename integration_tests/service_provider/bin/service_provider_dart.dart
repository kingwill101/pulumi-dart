import 'package:pulumi/pulumi.dart';

class MyStack extends Stack {
  MyStack() {
    registerOutputs({
      'abc': Output.create('ABC'),
      'Foo': Output.create(42),
    });
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
