import 'package:pulumi/pulumi.dart';

class MyStack extends Stack {
  MyStack() {
    registerOutputs({});
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
