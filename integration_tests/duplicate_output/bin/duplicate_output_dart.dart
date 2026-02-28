import 'package:pulumi/pulumi.dart';

class DuplicateOutputStack extends Stack {
  DuplicateOutputStack() {
    final values = Output.create([1, 2]);
    registerOutputs({
      'export1': values,
      'export2': values,
    });
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => DuplicateOutputStack());
}
