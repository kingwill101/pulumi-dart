// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a Sampling Algorithm that generates values based on previous values
class BayesianSamplingAlgorithmResponse {
  /// Expected value is 'Bayesian'.
  final pulumi.Input<String> samplingAlgorithmType;

  /// Creates a new [BayesianSamplingAlgorithmResponse].
  /// [samplingAlgorithmType] Expected value is 'Bayesian'.
  const BayesianSamplingAlgorithmResponse({
    required this.samplingAlgorithmType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'samplingAlgorithmType': samplingAlgorithmType,
    };
  }

  factory BayesianSamplingAlgorithmResponse.fromMap(Map<String, dynamic> map) {
    return BayesianSamplingAlgorithmResponse(
      samplingAlgorithmType: pulumi.Input.fromValue(map['samplingAlgorithmType'] as String),
    );
  }
}

