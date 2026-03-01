// ignore_for_file: unused_element, unnecessary_cast


/// Defines a Sampling Algorithm that generates values based on previous values
class BayesianSamplingAlgorithmResponse {
  /// Expected value is 'Bayesian'.
  final String samplingAlgorithmType;

  /// Creates a new [BayesianSamplingAlgorithmResponse].
  /// [samplingAlgorithmType] Expected value is 'Bayesian'.
  BayesianSamplingAlgorithmResponse({
    required this.samplingAlgorithmType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'samplingAlgorithmType': samplingAlgorithmType,
    };
  }

  factory BayesianSamplingAlgorithmResponse.fromMap(Map<String, dynamic> map) {
    return BayesianSamplingAlgorithmResponse(
      samplingAlgorithmType: map['samplingAlgorithmType'] as String,
    );
  }
}

