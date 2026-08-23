// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobInputDataConfigShuffleConfig {
  /// Seed value used to shuffle the training data.
  final pulumi.Input<int>? seed;

  /// Creates a new [TrainingJobInputDataConfigShuffleConfig].
  /// [seed] Seed value used to shuffle the training data.
  const TrainingJobInputDataConfigShuffleConfig({
    this.seed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seed': ?seed,
    };
  }

  factory TrainingJobInputDataConfigShuffleConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobInputDataConfigShuffleConfig(
      seed: (() { final guardedValue = map['seed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
