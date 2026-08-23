// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecification {
  /// Allowed categorical values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecification].
  /// [values] Allowed categorical values.
  const AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecification({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecification.fromMap(Map<String, dynamic> map) {
    return AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecification(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
