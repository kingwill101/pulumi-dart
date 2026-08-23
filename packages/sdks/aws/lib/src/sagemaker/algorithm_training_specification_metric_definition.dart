// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmTrainingSpecificationMetricDefinition {
  /// Metric name.
  final pulumi.Input<String> name;
  /// Regular expression used to extract the metric from logs.
  final pulumi.Input<String> regex;

  /// Creates a new [AlgorithmTrainingSpecificationMetricDefinition].
  /// [name] Metric name.
  /// [regex] Regular expression used to extract the metric from logs.
  const AlgorithmTrainingSpecificationMetricDefinition({
    required this.name,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'regex': regex,
    };
  }

  factory AlgorithmTrainingSpecificationMetricDefinition.fromMap(Map<String, dynamic> map) {
    return AlgorithmTrainingSpecificationMetricDefinition(
      name: pulumi.Input.fromValue(map['name'] as String),
      regex: pulumi.Input.fromValue(map['regex'] as String),
    );
  }
}
