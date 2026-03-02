// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a Sampling Algorithm that generates values randomly
class RandomSamplingAlgorithm {
  /// The specific type of random algorithm
  final pulumi.Input<String>? rule;
  /// Expected value is 'Random'.
  final pulumi.Input<String> samplingAlgorithmType;
  /// An optional integer to use as the seed for random number generation
  final pulumi.Input<int>? seed;

  /// Creates a new [RandomSamplingAlgorithm].
  /// [rule] The specific type of random algorithm
  /// [samplingAlgorithmType] Expected value is 'Random'.
  /// [seed] An optional integer to use as the seed for random number generation
  RandomSamplingAlgorithm({
    this.rule,
    required this.samplingAlgorithmType,
    this.seed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rule': ?rule,
      'samplingAlgorithmType': samplingAlgorithmType,
      'seed': ?seed,
    };
  }

  factory RandomSamplingAlgorithm.fromMap(Map<String, dynamic> map) {
    return RandomSamplingAlgorithm(
      rule: map['rule'] == null ? null : (map['rule']! as String).input(),
      samplingAlgorithmType: (map['samplingAlgorithmType'] as String).input(),
      seed: map['seed'] == null ? null : (map['seed']! as int).input(),
    );
  }
}

