// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobTrainingJobDefinitionInputDataConfigShuffleConfig {
  /// Shuffle seed.
  final pulumi.Input<int> seed;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionInputDataConfigShuffleConfig].
  /// [seed] Shuffle seed.
  const HyperParameterTuningJobTrainingJobDefinitionInputDataConfigShuffleConfig({
    required this.seed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seed': seed,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionInputDataConfigShuffleConfig.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionInputDataConfigShuffleConfig(
      seed: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['seed'])),
    );
  }
}
