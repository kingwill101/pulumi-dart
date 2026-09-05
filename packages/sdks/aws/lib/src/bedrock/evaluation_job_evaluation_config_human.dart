// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_evaluation_config_human_custom_metric.dart';
import 'evaluation_job_evaluation_config_human_dataset_metric_config.dart';
import 'evaluation_job_evaluation_config_human_human_workflow_config.dart';

class EvaluationJobEvaluationConfigHuman {
  /// One or more custom metrics for your human workers to use. See `evaluation_config.human.custom_metric` Block below.
  final pulumi.Input<List<EvaluationJobEvaluationConfigHumanCustomMetric>?>? customMetrics;
  /// One or more configurations for the prompt datasets and metrics to use. See `evaluation_config.human.dataset_metric_config` Block below.
  final pulumi.Input<List<EvaluationJobEvaluationConfigHumanDatasetMetricConfig>> datasetMetricConfigs;
  /// Configuration for the human workflow. See `humanWorkflowConfig` Block below.
  final pulumi.Input<EvaluationJobEvaluationConfigHumanHumanWorkflowConfig?>? humanWorkflowConfig;

  /// Creates a new [EvaluationJobEvaluationConfigHuman].
  /// [customMetrics] One or more custom metrics for your human workers to use. See `evaluation_config.human.custom_metric` Block below.
  /// [datasetMetricConfigs] One or more configurations for the prompt datasets and metrics to use. See `evaluation_config.human.dataset_metric_config` Block below.
  /// [humanWorkflowConfig] Configuration for the human workflow. See `humanWorkflowConfig` Block below.
  const EvaluationJobEvaluationConfigHuman({
    this.customMetrics,
    required this.datasetMetricConfigs,
    this.humanWorkflowConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customMetrics': ?pulumi.Input.mapOptionalInputValue<List<EvaluationJobEvaluationConfigHumanCustomMetric>, List<Map<String, dynamic>>>(customMetrics, (value) => pulumi.Input.encodeList<EvaluationJobEvaluationConfigHumanCustomMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datasetMetricConfigs': pulumi.Input.mapInputValue<List<EvaluationJobEvaluationConfigHumanDatasetMetricConfig>, List<Map<String, dynamic>>>(datasetMetricConfigs, (value) => pulumi.Input.encodeList<EvaluationJobEvaluationConfigHumanDatasetMetricConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'humanWorkflowConfig': ?pulumi.Input.mapOptionalInputValue<EvaluationJobEvaluationConfigHumanHumanWorkflowConfig, Map<String, dynamic>>(humanWorkflowConfig, (value) => value.toMap()),
    };
  }

  factory EvaluationJobEvaluationConfigHuman.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigHuman(
      customMetrics: (() { final guardedValue = map['customMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EvaluationJobEvaluationConfigHumanCustomMetric>(guardedValue, (value) => EvaluationJobEvaluationConfigHumanCustomMetric.fromMap((value as Map).cast<String, dynamic>()))); })(),
      datasetMetricConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<EvaluationJobEvaluationConfigHumanDatasetMetricConfig>(map['datasetMetricConfigs']!, (value) => EvaluationJobEvaluationConfigHumanDatasetMetricConfig.fromMap((value as Map).cast<String, dynamic>()))),
      humanWorkflowConfig: (() { final guardedValue = map['humanWorkflowConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobEvaluationConfigHumanHumanWorkflowConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
