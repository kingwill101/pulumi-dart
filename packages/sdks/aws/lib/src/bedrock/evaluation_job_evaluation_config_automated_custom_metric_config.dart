// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_evaluation_config_automated_custom_metric_config_custom_metric.dart';
import 'evaluation_job_evaluation_config_automated_custom_metric_config_evaluator_model_config.dart';

class EvaluationJobEvaluationConfigAutomatedCustomMetricConfig {
  /// One or more custom metric definitions. See `evaluation_config.automated.custom_metric_config.custom_metric` Block below.
  final pulumi.Input<List<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetric>> customMetrics;
  /// Configuration for the evaluator model used to compute the custom metrics. See `evaluatorModelConfig` Block above.
  final pulumi.Input<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfig> evaluatorModelConfig;

  /// Creates a new [EvaluationJobEvaluationConfigAutomatedCustomMetricConfig].
  /// [customMetrics] One or more custom metric definitions. See `evaluation_config.automated.custom_metric_config.custom_metric` Block below.
  /// [evaluatorModelConfig] Configuration for the evaluator model used to compute the custom metrics. See `evaluatorModelConfig` Block above.
  const EvaluationJobEvaluationConfigAutomatedCustomMetricConfig({
    required this.customMetrics,
    required this.evaluatorModelConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customMetrics': pulumi.Input.mapInputValue<List<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetric>, List<Map<String, dynamic>>>(customMetrics, (value) => pulumi.Input.encodeList<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'evaluatorModelConfig': pulumi.Input.mapInputValue<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfig, Map<String, dynamic>>(evaluatorModelConfig, (value) => value.toMap()),
    };
  }

  factory EvaluationJobEvaluationConfigAutomatedCustomMetricConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigAutomatedCustomMetricConfig(
      customMetrics: pulumi.Input.fromValue(pulumi.Input.decodeList<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetric>(map['customMetrics']!, (value) => EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetric.fromMap((value as Map).cast<String, dynamic>()))),
      evaluatorModelConfig: pulumi.Input.fromValue(EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfig.fromMap((map['evaluatorModelConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
