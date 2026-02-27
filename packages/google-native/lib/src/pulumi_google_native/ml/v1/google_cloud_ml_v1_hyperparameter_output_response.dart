// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_built_in_algorithm_output_response.dart';
import 'google_cloud_ml_v1_hyperparameter_output_hyperparameter_metric_response.dart';

/// Represents the result of a single hyperparameter tuning trial from a training job. The TrainingOutput object that is returned on successful completion of a training job with hyperparameter tuning includes a list of HyperparameterOutput objects, one for each successful trial.
class GoogleCloudMlV1HyperparameterOutputResponse {
  /// All recorded object metrics for this trial. This field is not currently populated.
  final List<GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse>
      allMetrics;

  /// Details related to built-in algorithms jobs. Only set for trials of built-in algorithms jobs that have succeeded.
  final GoogleCloudMlV1BuiltInAlgorithmOutputResponse builtInAlgorithmOutput;

  /// End time for the trial.
  final String endTime;

  /// The final objective metric seen for this trial.
  final GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse
      finalMetric;

  /// The hyperparameters given to this trial.
  final Map<String, String> hyperparameters;

  /// True if the trial is stopped early.
  final bool isTrialStoppedEarly;

  /// Start time for the trial.
  final String startTime;

  /// The detailed state of the trial.
  final String state;

  /// The trial id for these results.
  final String trialId;

  /// URIs for accessing [interactive shells](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) (one URI for each training node). Only available if this trial is part of a hyperparameter tuning job and the job's training_input.enable_web_access is `true`. The keys are names of each node in the training job; for example, `master-replica-0` for the master node, `worker-replica-0` for the first worker, and `ps-replica-0` for the first parameter server. The values are the URIs for each node's interactive shell.
  final Map<String, String> webAccessUris;

  GoogleCloudMlV1HyperparameterOutputResponse({
    required this.allMetrics,
    required this.builtInAlgorithmOutput,
    required this.endTime,
    required this.finalMetric,
    required this.hyperparameters,
    required this.isTrialStoppedEarly,
    required this.startTime,
    required this.state,
    required this.trialId,
    required this.webAccessUris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allMetrics'] = pulumi.Input.encodeList<
        GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse,
        Map<String, dynamic>>(allMetrics, (value) => value.toMap());
    map['builtInAlgorithmOutput'] = builtInAlgorithmOutput.toMap();
    map['endTime'] = endTime;
    map['finalMetric'] = finalMetric.toMap();
    map['hyperparameters'] = hyperparameters;
    map['isTrialStoppedEarly'] = isTrialStoppedEarly;
    map['startTime'] = startTime;
    map['state'] = state;
    map['trialId'] = trialId;
    map['webAccessUris'] = webAccessUris;
    return map;
  }

  factory GoogleCloudMlV1HyperparameterOutputResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1HyperparameterOutputResponse(
      allMetrics: pulumi.Input.decodeList<
              GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse>(
          map['allMetrics'],
          (value) =>
              GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      builtInAlgorithmOutput:
          GoogleCloudMlV1BuiltInAlgorithmOutputResponse.fromMap(
              (map['builtInAlgorithmOutput'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] as String,
      finalMetric:
          GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse
              .fromMap((map['finalMetric'] as Map).cast<String, dynamic>()),
      hyperparameters: (map['hyperparameters'] as Map).cast<String, String>(),
      isTrialStoppedEarly: map['isTrialStoppedEarly'] as bool,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      trialId: map['trialId'] as String,
      webAccessUris: (map['webAccessUris'] as Map).cast<String, String>(),
    );
  }
}
