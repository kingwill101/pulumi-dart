// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_hyperparameter_spec_algorithm.dart';
import 'google_cloud_ml_v1_hyperparameter_spec_goal.dart';
import 'google_cloud_ml_v1_parameter_spec.dart';

/// Represents a set of hyperparameters to optimize.
class GoogleCloudMlV1HyperparameterSpec {
  /// Optional. The search algorithm specified for the hyperparameter tuning job. Uses the default AI Platform hyperparameter tuning algorithm if unspecified.
  final GoogleCloudMlV1HyperparameterSpecAlgorithm? algorithm;

  /// Optional. Indicates if the hyperparameter tuning job enables auto trial early stopping.
  final bool? enableTrialEarlyStopping;

  /// The type of goal to use for tuning. Available types are `MAXIMIZE` and `MINIMIZE`. Defaults to `MAXIMIZE`.
  final GoogleCloudMlV1HyperparameterSpecGoal goal;

  /// Optional. The TensorFlow summary tag name to use for optimizing trials. For current versions of TensorFlow, this tag name should exactly match what is shown in TensorBoard, including all scopes. For versions of TensorFlow prior to 0.12, this should be only the tag passed to tf.Summary. By default, "training/hptuning/metric" will be used.
  final String? hyperparameterMetricTag;

  /// Optional. The number of failed trials that need to be seen before failing the hyperparameter tuning job. You can specify this field to override the default failing criteria for AI Platform hyperparameter tuning jobs. Defaults to zero, which means the service decides when a hyperparameter job should fail.
  final int? maxFailedTrials;

  /// Optional. The number of training trials to run concurrently. You can reduce the time it takes to perform hyperparameter tuning by adding trials in parallel. However, each trail only benefits from the information gained in completed trials. That means that a trial does not get access to the results of trials running at the same time, which could reduce the quality of the overall optimization. Each trial will use the same scale tier and machine types. Defaults to one.
  final int? maxParallelTrials;

  /// Optional. How many training trials should be attempted to optimize the specified hyperparameters. Defaults to one.
  final int? maxTrials;

  /// The set of parameters to tune.
  final List<GoogleCloudMlV1ParameterSpec> params;

  /// Optional. The prior hyperparameter tuning job id that users hope to continue with. The job id will be used to find the corresponding vizier study guid and resume the study.
  final String? resumePreviousJobId;

  GoogleCloudMlV1HyperparameterSpec({
    this.algorithm,
    this.enableTrialEarlyStopping,
    required this.goal,
    this.hyperparameterMetricTag,
    this.maxFailedTrials,
    this.maxParallelTrials,
    this.maxTrials,
    required this.params,
    this.resumePreviousJobId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final algorithmValue = algorithm;
    if (algorithmValue != null) {
      map['algorithm'] = algorithmValue.value;
    }
    final enableTrialEarlyStoppingValue = enableTrialEarlyStopping;
    if (enableTrialEarlyStoppingValue != null) {
      map['enableTrialEarlyStopping'] = enableTrialEarlyStoppingValue;
    }
    map['goal'] = goal.value;
    final hyperparameterMetricTagValue = hyperparameterMetricTag;
    if (hyperparameterMetricTagValue != null) {
      map['hyperparameterMetricTag'] = hyperparameterMetricTagValue;
    }
    final maxFailedTrialsValue = maxFailedTrials;
    if (maxFailedTrialsValue != null) {
      map['maxFailedTrials'] = maxFailedTrialsValue;
    }
    final maxParallelTrialsValue = maxParallelTrials;
    if (maxParallelTrialsValue != null) {
      map['maxParallelTrials'] = maxParallelTrialsValue;
    }
    final maxTrialsValue = maxTrials;
    if (maxTrialsValue != null) {
      map['maxTrials'] = maxTrialsValue;
    }
    map['params'] = pulumi.Input.encodeList<GoogleCloudMlV1ParameterSpec,
        Map<String, dynamic>>(params, (value) => value.toMap());
    final resumePreviousJobIdValue = resumePreviousJobId;
    if (resumePreviousJobIdValue != null) {
      map['resumePreviousJobId'] = resumePreviousJobIdValue;
    }
    return map;
  }

  factory GoogleCloudMlV1HyperparameterSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1HyperparameterSpec(
      algorithm: map['algorithm'] == null
          ? null
          : GoogleCloudMlV1HyperparameterSpecAlgorithm.fromValue(
              map['algorithm'] as String),
      enableTrialEarlyStopping: map['enableTrialEarlyStopping'] == null
          ? null
          : map['enableTrialEarlyStopping'] as bool,
      goal: GoogleCloudMlV1HyperparameterSpecGoal.fromValue(
          map['goal'] as String),
      hyperparameterMetricTag: map['hyperparameterMetricTag'] == null
          ? null
          : map['hyperparameterMetricTag'] as String,
      maxFailedTrials:
          map['maxFailedTrials'] == null ? null : map['maxFailedTrials'] as int,
      maxParallelTrials: map['maxParallelTrials'] == null
          ? null
          : map['maxParallelTrials'] as int,
      maxTrials: map['maxTrials'] == null ? null : map['maxTrials'] as int,
      params: pulumi.Input.decodeList<GoogleCloudMlV1ParameterSpec>(
          map['params'],
          (value) => GoogleCloudMlV1ParameterSpec.fromMap(
              (value as Map).cast<String, dynamic>())),
      resumePreviousJobId: map['resumePreviousJobId'] == null
          ? null
          : map['resumePreviousJobId'] as String,
    );
  }
}
