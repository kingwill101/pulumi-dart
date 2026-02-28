import 'dart:math';

import 'package:pulumi/dynamic.dart' as dyn;
import 'package:pulumi/pulumi.dart' as pulumi;

class RandomResource extends dyn.Resource {
  late final pulumi.Output<String?> val;

  RandomResource(String name)
      : super(
          dyn.SerializedProviderReference.fromValue('dynamic-provider'),
          name,
          pulumi.Input.mapToInputs(<String, dynamic>{'val': _randomValue()}),
          type: 'Random',
        ) {
    val = registerOutput<String?>('val');
  }

  static String _randomValue() {
    final random = Random();
    return List<int>.generate(15, (_) => random.nextInt(16))
        .map((n) => n.toRadixString(16))
        .join();
  }
}

class DynamicStack extends pulumi.Stack {
  late final pulumi.Output<Object?> randomId;
  late final pulumi.Output<Object?> randomVal;

  DynamicStack() {
    final random = RandomResource('foo');
    randomId = random.id.apply<Object?>((value) => value);
    randomVal = random.val.apply<Object?>((value) => value);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return <pulumi.OutputProperty>[
      pulumi.OutputProperty('random_id', randomId),
      pulumi.OutputProperty('random_val', randomVal),
    ];
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => DynamicStack());
}
