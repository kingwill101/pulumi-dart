// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_evaluation_config_automated_custom_metric_config_custom_metric_custom_metric_definition.dart';

class EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetric {
  /// Definition of the custom metric. See `customMetricDefinition` Block below.
  final pulumi.Input<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinition> customMetricDefinition;

  /// Creates a new [EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetric].
  /// [customMetricDefinition] Definition of the custom metric. See `customMetricDefinition` Block below.
  const EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetric({
    required this.customMetricDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customMetricDefinition': pulumi.Input.mapInputValue<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinition, Map<String, dynamic>>(customMetricDefinition, (value) => value.toMap()),
    };
  }

  factory EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetric.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetric(
      customMetricDefinition: pulumi.Input.fromValue(EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinition.fromMap((map['customMetricDefinition']! as Map).cast<String, dynamic>())),
    );
  }
}
