// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a Sampling Algorithm that generates values based on previous values
class BayesianSamplingAlgorithm {
  /// Expected value is 'Bayesian'.
  final pulumi.Input<String> samplingAlgorithmType;

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
      samplingAlgorithmType: (map['samplingAlgorithmType'] as String).input(),
    );
  }
}

