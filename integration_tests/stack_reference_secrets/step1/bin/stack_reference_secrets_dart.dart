import 'package:pulumi/pulumi.dart';

class MyStack extends Stack {
  MyStack() {
    registerOutputs({
      'normal': Output.create('normal'),
      'secret': Output.createSecret(Output.create('secret')),
    });
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
