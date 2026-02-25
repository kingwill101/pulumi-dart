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
  final code = await DeploymentImpl.run(() => MyStack());

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
