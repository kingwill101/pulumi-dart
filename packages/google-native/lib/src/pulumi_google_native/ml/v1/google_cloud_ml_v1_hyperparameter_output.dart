// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_ml_v1_built_in_algorithm_output.dart';
import 'google_cloud_ml_v1_hyperparameter_output_hyperparameter_metric.dart';

/// Represents the result of a single hyperparameter tuning trial from a training job. The TrainingOutput object that is returned on successful completion of a training job with hyperparameter tuning includes a list of HyperparameterOutput objects, one for each successful trial.
class GoogleCloudMlV1HyperparameterOutput {
  /// All recorded object metrics for this trial. This field is not currently populated.
  final List<GoogleCloudMlV1HyperparameterOutputHyperparameterMetric>?
      allMetrics;

  /// Details related to built-in algorithms jobs. Only set for trials of built-in algorithms jobs that have succeeded.
  final GoogleCloudMlV1BuiltInAlgorithmOutput? builtInAlgorithmOutput;

  /// The final objective metric seen for this trial.
  final GoogleCloudMlV1HyperparameterOutputHyperparameterMetric? finalMetric;

  /// The hyperparameters given to this trial.
  final Map<String, String>? hyperparameters;

  /// True if the trial is stopped early.
  final bool? isTrialStoppedEarly;

  /// The trial id for these results.
  final String? trialId;

  /// URIs for accessing [interactive shells](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) (one URI for each training node). Only available if this trial is part of a hyperparameter tuning job and the job's training_input.enable_web_access is `true`. The keys are names of each node in the training job; for example, `master-replica-0` for the master node, `worker-replica-0` for the first worker, and `ps-replica-0` for the first parameter server. The values are the URIs for each node's interactive shell.
  final Map<String, String>? webAccessUris;

  GoogleCloudMlV1HyperparameterOutput({
    this.allMetrics,
    this.builtInAlgorithmOutput,
    this.finalMetric,
    this.hyperparameters,
    this.isTrialStoppedEarly,
    this.trialId,
    this.webAccessUris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allMetricsValue = allMetrics;
    if (allMetricsValue != null) {
      map['allMetrics'] = Input.encodeList<
          GoogleCloudMlV1HyperparameterOutputHyperparameterMetric,
          Map<String, dynamic>>(allMetricsValue, (value) => value.toMap());
    }
    final builtInAlgorithmOutputValue = builtInAlgorithmOutput;
    if (builtInAlgorithmOutputValue != null) {
      map['builtInAlgorithmOutput'] = builtInAlgorithmOutputValue.toMap();
    }
    final finalMetricValue = finalMetric;
    if (finalMetricValue != null) {
      map['finalMetric'] = finalMetricValue.toMap();
    }
    final hyperparametersValue = hyperparameters;
    if (hyperparametersValue != null) {
      map['hyperparameters'] = hyperparametersValue;
    }
    final isTrialStoppedEarlyValue = isTrialStoppedEarly;
    if (isTrialStoppedEarlyValue != null) {
      map['isTrialStoppedEarly'] = isTrialStoppedEarlyValue;
    }
    final trialIdValue = trialId;
    if (trialIdValue != null) {
      map['trialId'] = trialIdValue;
    }
    final webAccessUrisValue = webAccessUris;
    if (webAccessUrisValue != null) {
      map['webAccessUris'] = webAccessUrisValue;
    }
    return map;
  }

  factory GoogleCloudMlV1HyperparameterOutput.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1HyperparameterOutput(
      allMetrics: map['allMetrics'] == null
          ? null
          : Input.decodeList<
                  GoogleCloudMlV1HyperparameterOutputHyperparameterMetric>(
              map['allMetrics'],
              (value) => GoogleCloudMlV1HyperparameterOutputHyperparameterMetric
                  .fromMap((value as Map).cast<String, dynamic>())),
      builtInAlgorithmOutput: map['builtInAlgorithmOutput'] == null
          ? null
          : GoogleCloudMlV1BuiltInAlgorithmOutput.fromMap(
              (map['builtInAlgorithmOutput'] as Map).cast<String, dynamic>()),
      finalMetric: map['finalMetric'] == null
          ? null
          : GoogleCloudMlV1HyperparameterOutputHyperparameterMetric.fromMap(
              (map['finalMetric'] as Map).cast<String, dynamic>()),
      hyperparameters: map['hyperparameters'] == null
          ? null
          : (map['hyperparameters'] as Map).cast<String, String>(),
      isTrialStoppedEarly: map['isTrialStoppedEarly'] == null
          ? null
          : map['isTrialStoppedEarly'] as bool,
      trialId: map['trialId'] == null ? null : map['trialId'] as String,
      webAccessUris: map['webAccessUris'] == null
          ? null
          : (map['webAccessUris'] as Map).cast<String, String>(),
    );
  }
}
