// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a Sampling Algorithm that generates values randomly
class RandomSamplingAlgorithm {
  /// The specific type of random algorithm
  final pulumi.Input<dynamic>? rule;
  /// Expected value is 'Random'.
  final pulumi.Input<String> samplingAlgorithmType;
  /// An optional integer to use as the seed for random number generation
  final pulumi.Input<int?>? seed;

  /// Creates a new [RandomSamplingAlgorithm].
  /// [rule] The specific type of random algorithm
  /// [samplingAlgorithmType] Expected value is 'Random'.
  /// [seed] An optional integer to use as the seed for random number generation
  RandomSamplingAlgorithm({
    pulumi.Input<dynamic>? rule,
    required this.samplingAlgorithmType,
    this.seed,
  }) : rule = rule ?? pulumi.Input.fromValue('Random');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rule': ?rule,
      'samplingAlgorithmType': samplingAlgorithmType,
      'seed': ?seed,
    };
  }

  factory RandomSamplingAlgorithm.fromMap(Map<String, dynamic> map) {
    return RandomSamplingAlgorithm(
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      samplingAlgorithmType: pulumi.Input.fromValue(map['samplingAlgorithmType'] as String),
      seed: (() { final guardedValue = map['seed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
