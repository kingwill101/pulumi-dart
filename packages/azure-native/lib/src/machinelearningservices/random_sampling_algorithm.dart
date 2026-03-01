// ignore_for_file: unused_element, unnecessary_cast


/// Defines a Sampling Algorithm that generates values randomly
class RandomSamplingAlgorithm {
  /// The specific type of random algorithm
  final String? rule;
  /// Expected value is 'Random'.
  final String samplingAlgorithmType;
  /// An optional integer to use as the seed for random number generation
  final int? seed;

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
      rule: map['rule'] == null ? null : map['rule'] as String,
      samplingAlgorithmType: map['samplingAlgorithmType'] as String,
      seed: map['seed'] == null ? null : map['seed'] as int,
    );
  }
}

