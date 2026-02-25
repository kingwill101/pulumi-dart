import 'package:pulumi/pulumi.dart';

class MyStack extends Stack {
  MyStack() {
    registerOutputs({
      'xyz': Output.create('DEF'),
    });
  }
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() {
    MyStack();
    throw Exception('program error');
  });

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
