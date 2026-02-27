// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_built_in_algorithm_output_response.dart';
import 'google_cloud_ml_v1_hyperparameter_output_response.dart';

/// Represents results of a training job. Output only.
class GoogleCloudMlV1TrainingOutputResponse {
  /// Details related to built-in algorithms jobs. Only set for built-in algorithms jobs.
  final GoogleCloudMlV1BuiltInAlgorithmOutputResponse builtInAlgorithmOutput;

  /// The number of hyperparameter tuning trials that completed successfully. Only set for hyperparameter tuning jobs.
  final String completedTrialCount;

  /// The amount of ML units consumed by the job.
  final double consumedMLUnits;

  /// The TensorFlow summary tag name used for optimizing hyperparameter tuning trials. See [`HyperparameterSpec.hyperparameterMetricTag`](#HyperparameterSpec.FIELDS.hyperparameter_metric_tag) for more information. Only set for hyperparameter tuning jobs.
  final String hyperparameterMetricTag;

  /// Whether this job is a built-in Algorithm job.
  final bool isBuiltInAlgorithmJob;

  /// Whether this job is a hyperparameter tuning job.
  final bool isHyperparameterTuningJob;

  /// Results for individual Hyperparameter trials. Only set for hyperparameter tuning jobs.
  final List<GoogleCloudMlV1HyperparameterOutputResponse> trials;

  /// URIs for accessing [interactive shells](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) (one URI for each training node). Only available if training_input.enable_web_access is `true`. The keys are names of each node in the training job; for example, `master-replica-0` for the master node, `worker-replica-0` for the first worker, and `ps-replica-0` for the first parameter server. The values are the URIs for each node's interactive shell.
  final Map<String, String> webAccessUris;

  GoogleCloudMlV1TrainingOutputResponse({
    required this.builtInAlgorithmOutput,
    required this.completedTrialCount,
    required this.consumedMLUnits,
    required this.hyperparameterMetricTag,
    required this.isBuiltInAlgorithmJob,
    required this.isHyperparameterTuningJob,
    required this.trials,
    required this.webAccessUris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builtInAlgorithmOutput'] = builtInAlgorithmOutput.toMap();
    map['completedTrialCount'] = completedTrialCount;
    map['consumedMLUnits'] = consumedMLUnits;
    map['hyperparameterMetricTag'] = hyperparameterMetricTag;
    map['isBuiltInAlgorithmJob'] = isBuiltInAlgorithmJob;
    map['isHyperparameterTuningJob'] = isHyperparameterTuningJob;
    map['trials'] = pulumi.Input.encodeList<
        GoogleCloudMlV1HyperparameterOutputResponse,
        Map<String, dynamic>>(trials, (value) => value.toMap());
    map['webAccessUris'] = webAccessUris;
    return map;
  }

  factory GoogleCloudMlV1TrainingOutputResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1TrainingOutputResponse(
      builtInAlgorithmOutput:
          GoogleCloudMlV1BuiltInAlgorithmOutputResponse.fromMap(
              (map['builtInAlgorithmOutput'] as Map).cast<String, dynamic>()),
      completedTrialCount: map['completedTrialCount'] as String,
      consumedMLUnits: map['consumedMLUnits'] as double,
      hyperparameterMetricTag: map['hyperparameterMetricTag'] as String,
      isBuiltInAlgorithmJob: map['isBuiltInAlgorithmJob'] as bool,
      isHyperparameterTuningJob: map['isHyperparameterTuningJob'] as bool,
      trials:
          pulumi.Input.decodeList<GoogleCloudMlV1HyperparameterOutputResponse>(
              map['trials'],
              (value) => GoogleCloudMlV1HyperparameterOutputResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      webAccessUris: (map['webAccessUris'] as Map).cast<String, String>(),
    );
  }
}
