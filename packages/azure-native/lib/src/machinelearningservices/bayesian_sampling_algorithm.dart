// ignore_for_file: unused_element, unnecessary_cast


/// Defines a Sampling Algorithm that generates values based on previous values
class BayesianSamplingAlgorithm {
  /// Expected value is 'Bayesian'.
  final String samplingAlgorithmType;

  /// Creates a new [BayesianSamplingAlgorithm].
  /// [samplingAlgorithmType] Expected value is 'Bayesian'.
  BayesianSamplingAlgorithm({
    required this.samplingAlgorithmType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'samplingAlgorithmType': samplingAlgorithmType,
    };
  }

  factory BayesianSamplingAlgorithm.fromMap(Map<String, dynamic> map) {
    return BayesianSamplingAlgorithm(
      samplingAlgorithmType: map['samplingAlgorithmType'] as String,
    );
  }
}

