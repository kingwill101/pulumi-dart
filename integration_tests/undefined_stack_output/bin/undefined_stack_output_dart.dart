import 'package:pulumi/pulumi.dart';

class UndefinedStackOutputStack extends Stack {
  UndefinedStackOutputStack() {
    registerOutputs({
      'number': Output.create(0),
      'undef': Output.createUnknown<dynamic>(),
      'nil': Output.create(null),
      'list': Output.create([0, null, null]),
      'map': Output.create({'number2': 0, 'nil2': null}),
    });
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => UndefinedStackOutputStack());
}
