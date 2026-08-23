// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmTrainingSpecificationSupportedHyperParameterRangeContinuousParameterRangeSpecification {
  /// Maximum allowed value.
  final pulumi.Input<String> maxValue;
  /// Minimum allowed value.
  final pulumi.Input<String> minValue;

  /// Creates a new [AlgorithmTrainingSpecificationSupportedHyperParameterRangeContinuousParameterRangeSpecification].
  /// [maxValue] Maximum allowed value.
  /// [minValue] Minimum allowed value.
  const AlgorithmTrainingSpecificationSupportedHyperParameterRangeContinuousParameterRangeSpecification({
    required this.maxValue,
    required this.minValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': maxValue,
      'minValue': minValue,
    };
  }

  factory AlgorithmTrainingSpecificationSupportedHyperParameterRangeContinuousParameterRangeSpecification.fromMap(Map<String, dynamic> map) {
    return AlgorithmTrainingSpecificationSupportedHyperParameterRangeContinuousParameterRangeSpecification(
      maxValue: pulumi.Input.fromValue(map['maxValue'] as String),
      minValue: pulumi.Input.fromValue(map['minValue'] as String),
    );
  }
}
