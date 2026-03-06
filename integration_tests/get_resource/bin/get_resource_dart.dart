import 'package:pulumi/pulumi.dart';

class MyStack extends Stack {
  MyStack() {
    registerOutputs({
      'getPetLength': Output.create(2),
      'secret': Output.createSecret(Output.create(1)),
    });
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
