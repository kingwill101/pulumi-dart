// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_evaluation_config_human_dataset_metric_config_dataset.dart';

class EvaluationJobEvaluationConfigHumanDatasetMetricConfig {
  /// Prompt dataset to use. See `dataset` Block below.
  final pulumi.Input<EvaluationJobEvaluationConfigHumanDatasetMetricConfigDataset> dataset;
  /// Names of the metrics to use for the evaluation job.
  final pulumi.Input<List<String>> metricNames;
  /// Type of task to evaluate. Common values are `Summarization`, `Classification`, `QuestionAndAnswer`, `Generation`, and `Custom`.
  final pulumi.Input<String> taskType;

  /// Creates a new [EvaluationJobEvaluationConfigHumanDatasetMetricConfig].
  /// [dataset] Prompt dataset to use. See `dataset` Block below.
  /// [metricNames] Names of the metrics to use for the evaluation job.
  /// [taskType] Type of task to evaluate. Common values are `Summarization`, `Classification`, `QuestionAndAnswer`, `Generation`, and `Custom`.
  const EvaluationJobEvaluationConfigHumanDatasetMetricConfig({
    required this.dataset,
    required this.metricNames,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': pulumi.Input.mapInputValue<EvaluationJobEvaluationConfigHumanDatasetMetricConfigDataset, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'metricNames': metricNames,
      'taskType': taskType,
    };
  }

  factory EvaluationJobEvaluationConfigHumanDatasetMetricConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigHumanDatasetMetricConfig(
      dataset: pulumi.Input.fromValue(EvaluationJobEvaluationConfigHumanDatasetMetricConfigDataset.fromMap((map['dataset']! as Map).cast<String, dynamic>())),
      metricNames: pulumi.Input.fromValue((map['metricNames'] as List).cast<String>()),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
