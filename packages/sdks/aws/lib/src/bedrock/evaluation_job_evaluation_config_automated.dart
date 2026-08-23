// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_evaluation_config_automated_custom_metric_config.dart';
import 'evaluation_job_evaluation_config_automated_dataset_metric_config.dart';
import 'evaluation_job_evaluation_config_automated_evaluator_model_config.dart';

class EvaluationJobEvaluationConfigAutomated {
  /// Configuration for custom metrics to compute for the evaluation job. See `customMetricConfig` Block below.
  final pulumi.Input<EvaluationJobEvaluationConfigAutomatedCustomMetricConfig>? customMetricConfig;
  /// One or more configurations for the prompt datasets and metrics to use. See `evaluation_config.automated.dataset_metric_config` Block below.
  final pulumi.Input<List<EvaluationJobEvaluationConfigAutomatedDatasetMetricConfig>> datasetMetricConfigs;
  /// Configuration for the evaluator (judge) model. Required for automated jobs that use an LLM-as-judge metric, or that evaluate a knowledge base. See `evaluatorModelConfig` Block below.
  final pulumi.Input<EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfig>? evaluatorModelConfig;

  /// Creates a new [EvaluationJobEvaluationConfigAutomated].
  /// [customMetricConfig] Configuration for custom metrics to compute for the evaluation job. See `customMetricConfig` Block below.
  /// [datasetMetricConfigs] One or more configurations for the prompt datasets and metrics to use. See `evaluation_config.automated.dataset_metric_config` Block below.
  /// [evaluatorModelConfig] Configuration for the evaluator (judge) model. Required for automated jobs that use an LLM-as-judge metric, or that evaluate a knowledge base. See `evaluatorModelConfig` Block below.
  const EvaluationJobEvaluationConfigAutomated({
    this.customMetricConfig,
    required this.datasetMetricConfigs,
    this.evaluatorModelConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customMetricConfig': ?pulumi.Input.mapOptionalInputValue<EvaluationJobEvaluationConfigAutomatedCustomMetricConfig, Map<String, dynamic>>(customMetricConfig, (value) => value.toMap()),
      'datasetMetricConfigs': pulumi.Input.mapInputValue<List<EvaluationJobEvaluationConfigAutomatedDatasetMetricConfig>, List<Map<String, dynamic>>>(datasetMetricConfigs, (value) => pulumi.Input.encodeList<EvaluationJobEvaluationConfigAutomatedDatasetMetricConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'evaluatorModelConfig': ?pulumi.Input.mapOptionalInputValue<EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfig, Map<String, dynamic>>(evaluatorModelConfig, (value) => value.toMap()),
    };
  }

  factory EvaluationJobEvaluationConfigAutomated.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigAutomated(
      customMetricConfig: (() { final guardedValue = map['customMetricConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobEvaluationConfigAutomatedCustomMetricConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datasetMetricConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<EvaluationJobEvaluationConfigAutomatedDatasetMetricConfig>(map['datasetMetricConfigs']!, (value) => EvaluationJobEvaluationConfigAutomatedDatasetMetricConfig.fromMap((value as Map).cast<String, dynamic>()))),
      evaluatorModelConfig: (() { final guardedValue = map['evaluatorModelConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
