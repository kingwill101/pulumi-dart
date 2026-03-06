import 'package:pulumi/pulumi.dart';

class MyStack extends Stack {
  MyStack() {
    final longString = String.fromCharCodes(
      List<int>.filled(5 * 1024 * 1024, 97),
    );

    registerOutputs({
      'LongString': Output.create(longString),
    });
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
