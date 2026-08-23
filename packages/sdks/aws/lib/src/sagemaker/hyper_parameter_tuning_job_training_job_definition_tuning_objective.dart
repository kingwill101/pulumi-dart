// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobTrainingJobDefinitionTuningObjective {
  /// Metric name for objective.
  final pulumi.Input<String> metricName;
  /// Optimization direction. Valid values include `Minimize` and `Maximize`.
  final pulumi.Input<String> type;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionTuningObjective].
  /// [metricName] Metric name for objective.
  /// [type] Optimization direction. Valid values include `Minimize` and `Maximize`.
  const HyperParameterTuningJobTrainingJobDefinitionTuningObjective({
    required this.metricName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'type': type,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionTuningObjective.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionTuningObjective(
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
