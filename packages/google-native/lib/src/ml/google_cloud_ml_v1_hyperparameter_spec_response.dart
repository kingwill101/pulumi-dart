// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_parameter_spec_response.dart';

/// Represents a set of hyperparameters to optimize.
class GoogleCloudMlV1HyperparameterSpecResponse {
  /// Optional. The search algorithm specified for the hyperparameter tuning job. Uses the default AI Platform hyperparameter tuning algorithm if unspecified.
  final String algorithm;

  /// Optional. Indicates if the hyperparameter tuning job enables auto trial early stopping.
  final bool enableTrialEarlyStopping;

  /// The type of goal to use for tuning. Available types are `MAXIMIZE` and `MINIMIZE`. Defaults to `MAXIMIZE`.
  final String goal;

  /// Optional. The TensorFlow summary tag name to use for optimizing trials. For current versions of TensorFlow, this tag name should exactly match what is shown in TensorBoard, including all scopes. For versions of TensorFlow prior to 0.12, this should be only the tag passed to tf.Summary. By default, "training/hptuning/metric" will be used.
  final String hyperparameterMetricTag;

  /// Optional. The number of failed trials that need to be seen before failing the hyperparameter tuning job. You can specify this field to override the default failing criteria for AI Platform hyperparameter tuning jobs. Defaults to zero, which means the service decides when a hyperparameter job should fail.
  final int maxFailedTrials;

  /// Optional. The number of training trials to run concurrently. You can reduce the time it takes to perform hyperparameter tuning by adding trials in parallel. However, each trail only benefits from the information gained in completed trials. That means that a trial does not get access to the results of trials running at the same time, which could reduce the quality of the overall optimization. Each trial will use the same scale tier and machine types. Defaults to one.
  final int maxParallelTrials;

  /// Optional. How many training trials should be attempted to optimize the specified hyperparameters. Defaults to one.
  final int maxTrials;

  /// The set of parameters to tune.
  final List<GoogleCloudMlV1ParameterSpecResponse> params;

  /// Optional. The prior hyperparameter tuning job id that users hope to continue with. The job id will be used to find the corresponding vizier study guid and resume the study.
  final String resumePreviousJobId;

  /// Creates a new [GoogleCloudMlV1HyperparameterSpecResponse].
  /// [algorithm] Optional. The search algorithm specified for the hyperparameter tuning job. Uses the default AI Platform hyperparameter tuning algorithm if unspecified.
  /// [enableTrialEarlyStopping] Optional. Indicates if the hyperparameter tuning job enables auto trial early stopping.
  /// [goal] The type of goal to use for tuning. Available types are `MAXIMIZE` and `MINIMIZE`. Defaults to `MAXIMIZE`.
  /// [hyperparameterMetricTag] Optional. The TensorFlow summary tag name to use for optimizing trials. For current versions of TensorFlow, this tag name should exactly match what is shown in TensorBoard, including all scopes. For versions of TensorFlow prior to 0.12, this should be only the tag passed to tf.Summary. By default, "training/hptuning/metric" will be used.
  /// [maxFailedTrials] Optional. The number of failed trials that need to be seen before failing the hyperparameter tuning job. You can specify this field to override the default failing criteria for AI Platform hyperparameter tuning jobs. Defaults to zero, which means the service decides when a hyperparameter job should fail.
  /// [maxParallelTrials] Optional. The number of training trials to run concurrently. You can reduce the time it takes to perform hyperparameter tuning by adding trials in parallel. However, each trail only benefits from the information gained in completed trials. That means that a trial does not get access to the results of trials running at the same time, which could reduce the quality of the overall optimization. Each trial will use the same scale tier and machine types. Defaults to one.
  /// [maxTrials] Optional. How many training trials should be attempted to optimize the specified hyperparameters. Defaults to one.
  /// [params] The set of parameters to tune.
  /// [resumePreviousJobId] Optional. The prior hyperparameter tuning job id that users hope to continue with. The job id will be used to find the corresponding vizier study guid and resume the study.
  GoogleCloudMlV1HyperparameterSpecResponse({
    required this.algorithm,
    required this.enableTrialEarlyStopping,
    required this.goal,
    required this.hyperparameterMetricTag,
    required this.maxFailedTrials,
    required this.maxParallelTrials,
    required this.maxTrials,
    required this.params,
    required this.resumePreviousJobId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'enableTrialEarlyStopping': enableTrialEarlyStopping,
      'goal': goal,
      'hyperparameterMetricTag': hyperparameterMetricTag,
      'maxFailedTrials': maxFailedTrials,
      'maxParallelTrials': maxParallelTrials,
      'maxTrials': maxTrials,
      'params':
          pulumi.Input.encodeList<
            GoogleCloudMlV1ParameterSpecResponse,
            Map<String, dynamic>
          >(params, (value) => value.toMap()),
      'resumePreviousJobId': resumePreviousJobId,
    };
  }

  factory GoogleCloudMlV1HyperparameterSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudMlV1HyperparameterSpecResponse(
      algorithm: map['algorithm'] as String,
      enableTrialEarlyStopping: map['enableTrialEarlyStopping'] as bool,
      goal: map['goal'] as String,
      hyperparameterMetricTag: map['hyperparameterMetricTag'] as String,
      maxFailedTrials: map['maxFailedTrials'] as int,
      maxParallelTrials: map['maxParallelTrials'] as int,
      maxTrials: map['maxTrials'] as int,
      params: pulumi.Input.decodeList<GoogleCloudMlV1ParameterSpecResponse>(
        map['params'],
        (value) => GoogleCloudMlV1ParameterSpecResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      resumePreviousJobId: map['resumePreviousJobId'] as String,
    );
  }
}
