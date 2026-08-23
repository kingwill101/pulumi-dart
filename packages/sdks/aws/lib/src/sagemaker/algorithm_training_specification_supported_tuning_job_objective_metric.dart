// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetric {
  /// Metric name.
  final pulumi.Input<String> metricName;
  /// Objective type. Allowed values are: `Minimize` and `Maximize`.
  final pulumi.Input<String> type;

  /// Creates a new [AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetric].
  /// [metricName] Metric name.
  /// [type] Objective type. Allowed values are: `Minimize` and `Maximize`.
  const AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetric({
    required this.metricName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'type': type,
    };
  }

  factory AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetric.fromMap(Map<String, dynamic> map) {
    return AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetric(
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
