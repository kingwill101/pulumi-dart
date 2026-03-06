import 'package:pulumi/pulumi.dart';

class MyStack extends Stack {
  MyStack() {
    registerOutputs({
      'xyz': Output.create('ABC'),
      'foo': Output.create(42),
    });
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
