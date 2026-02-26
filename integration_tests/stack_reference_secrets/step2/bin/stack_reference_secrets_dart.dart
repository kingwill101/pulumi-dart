import 'package:pulumi/pulumi.dart';

class MyStack extends Stack {
  MyStack() {
    final deployment = DeploymentImpl.instance;
    final slug =
        '${deployment.organizationName}/${deployment.projectName}/${deployment.stackName}';
    final sr = StackReference(slug);

    registerOutputs({
      'normal': Output.create('normal'),
      'secret': Output.createSecret(Output.create('secret')),
      'refNormal': sr.getOutput(Input.fromValue('normal')),
      'refSecret': sr.getOutput(Input.fromValue('secret')),
    });
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
