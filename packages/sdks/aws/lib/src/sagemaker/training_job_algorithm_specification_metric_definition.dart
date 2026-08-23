// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobAlgorithmSpecificationMetricDefinition {
  /// Name of the metric.
  final pulumi.Input<String> name;
  /// Regular expression that searches the output of the training job and captures the value of the metric.
  final pulumi.Input<String> regex;

  /// Creates a new [TrainingJobAlgorithmSpecificationMetricDefinition].
  /// [name] Name of the metric.
  /// [regex] Regular expression that searches the output of the training job and captures the value of the metric.
  const TrainingJobAlgorithmSpecificationMetricDefinition({
    required this.name,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'regex': regex,
    };
  }

  factory TrainingJobAlgorithmSpecificationMetricDefinition.fromMap(Map<String, dynamic> map) {
    return TrainingJobAlgorithmSpecificationMetricDefinition(
      name: pulumi.Input.fromValue(map['name'] as String),
      regex: pulumi.Input.fromValue(map['regex'] as String),
    );
  }
}
