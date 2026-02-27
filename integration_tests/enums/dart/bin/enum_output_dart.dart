import 'package:pulumi/pulumi.dart';

enum Farm {
  pulumiPlantersInc('Pulumi Planters Inc.'),
  plantsRUs("Plants'R'Us");

  const Farm(this.value);
  final String value;
}

enum RubberTreeVariety {
  burgundy('Burgundy'),
  ruby('Ruby'),
  tineke('Tineke');

  const RubberTreeVariety(this.value);
  final String value;
}

class EnumOutputStack extends Stack {
  EnumOutputStack() {
    final myTreeType = Output.create(RubberTreeVariety.burgundy.value);
    final myTreeFarm = Output.create(Farm.pulumiPlantersInc.value);

    registerOutputs({
      'myTreeType': myTreeType,
      'myTreeFarmChanged': Output.create('${Farm.pulumiPlantersInc.value}foo'),
      'mySentence': Output.create(
        'My ${RubberTreeVariety.burgundy.value} Rubber tree is from ${Farm.pulumiPlantersInc.value}',
      ),
    });
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => EnumOutputStack());
}
