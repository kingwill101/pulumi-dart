// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecification {
  /// Maximum allowed value.
  final pulumi.Input<String> maxValue;
  /// Minimum allowed value.
  final pulumi.Input<String> minValue;

  /// Creates a new [AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecification].
  /// [maxValue] Maximum allowed value.
  /// [minValue] Minimum allowed value.
  const AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecification({
    required this.maxValue,
    required this.minValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': maxValue,
      'minValue': minValue,
    };
  }

  factory AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecification.fromMap(Map<String, dynamic> map) {
    return AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecification(
      maxValue: pulumi.Input.fromValue(map['maxValue'] as String),
      minValue: pulumi.Input.fromValue(map['minValue'] as String),
    );
  }
}
