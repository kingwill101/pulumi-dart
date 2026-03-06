import 'package:pulumi/pulumi.dart';

class MyStack extends Stack {
  MyStack() {
    final abc = Output.create('ABC');
    final foo = Output.create(42);
    final bar = Output.create('this should not come to output');

    // Export only the expected stack outputs.
    registerOutputs({
      'abc': abc,
      'Foo': foo,
    });

    // Keep this to mirror the source fixture semantics.
    bar.getValue();
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
