// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationMetricDefinition {
  /// Metric name.
  final pulumi.Input<String> name;
  /// Pattern used to extract metric values.
  final pulumi.Input<String> regex;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationMetricDefinition].
  /// [name] Metric name.
  /// [regex] Pattern used to extract metric values.
  const HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationMetricDefinition({
    required this.name,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'regex': regex,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationMetricDefinition.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationMetricDefinition(
      name: pulumi.Input.fromValue(map['name'] as String),
      regex: pulumi.Input.fromValue(map['regex'] as String),
    );
  }
}
