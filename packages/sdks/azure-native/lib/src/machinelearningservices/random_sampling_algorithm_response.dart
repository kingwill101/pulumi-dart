// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a Sampling Algorithm that generates values randomly
class RandomSamplingAlgorithmResponse {
  /// The specific type of random algorithm
  final pulumi.Input<String>? rule;
  /// Expected value is 'Random'.
  final pulumi.Input<String> samplingAlgorithmType;
  /// An optional integer to use as the seed for random number generation
  final pulumi.Input<int>? seed;

  /// Creates a new [RandomSamplingAlgorithmResponse].
  /// [rule] The specific type of random algorithm
  /// [samplingAlgorithmType] Expected value is 'Random'.
  /// [seed] An optional integer to use as the seed for random number generation
  const RandomSamplingAlgorithmResponse({
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

  factory RandomSamplingAlgorithmResponse.fromMap(Map<String, dynamic> map) {
    return RandomSamplingAlgorithmResponse(
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samplingAlgorithmType: pulumi.Input.fromValue(map['samplingAlgorithmType'] as String),
      seed: (() { final guardedValue = map['seed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
