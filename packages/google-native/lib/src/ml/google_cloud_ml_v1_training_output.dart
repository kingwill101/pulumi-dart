// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_built_in_algorithm_output.dart';
import 'google_cloud_ml_v1_hyperparameter_output.dart';

/// Represents results of a training job. Output only.
class GoogleCloudMlV1TrainingOutput {
  /// Details related to built-in algorithms jobs. Only set for built-in algorithms jobs.
  final GoogleCloudMlV1BuiltInAlgorithmOutput? builtInAlgorithmOutput;
  /// The number of hyperparameter tuning trials that completed successfully. Only set for hyperparameter tuning jobs.
  final String? completedTrialCount;
  /// The amount of ML units consumed by the job.
  final double? consumedMLUnits;
  /// The TensorFlow summary tag name used for optimizing hyperparameter tuning trials. See [`HyperparameterSpec.hyperparameterMetricTag`](#HyperparameterSpec.FIELDS.hyperparameter_metric_tag) for more information. Only set for hyperparameter tuning jobs.
  final String? hyperparameterMetricTag;
  /// Whether this job is a built-in Algorithm job.
  final bool? isBuiltInAlgorithmJob;
  /// Whether this job is a hyperparameter tuning job.
  final bool? isHyperparameterTuningJob;
  /// Results for individual Hyperparameter trials. Only set for hyperparameter tuning jobs.
  final List<GoogleCloudMlV1HyperparameterOutput>? trials;

  /// Creates a new [GoogleCloudMlV1TrainingOutput].
  /// [builtInAlgorithmOutput] Details related to built-in algorithms jobs. Only set for built-in algorithms jobs.
  /// [completedTrialCount] The number of hyperparameter tuning trials that completed successfully. Only set for hyperparameter tuning jobs.
  /// [consumedMLUnits] The amount of ML units consumed by the job.
  /// [hyperparameterMetricTag] The TensorFlow summary tag name used for optimizing hyperparameter tuning trials. See [`HyperparameterSpec.hyperparameterMetricTag`](#HyperparameterSpec.FIELDS.hyperparameter_metric_tag) for more information. Only set for hyperparameter tuning jobs.
  /// [isBuiltInAlgorithmJob] Whether this job is a built-in Algorithm job.
  /// [isHyperparameterTuningJob] Whether this job is a hyperparameter tuning job.
  /// [trials] Results for individual Hyperparameter trials. Only set for hyperparameter tuning jobs.
  GoogleCloudMlV1TrainingOutput({
    this.builtInAlgorithmOutput,
    this.completedTrialCount,
    this.consumedMLUnits,
    this.hyperparameterMetricTag,
    this.isBuiltInAlgorithmJob,
    this.isHyperparameterTuningJob,
    this.trials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtInAlgorithmOutput': ?builtInAlgorithmOutput == null ? null : builtInAlgorithmOutput!.toMap(),
      'completedTrialCount': ?completedTrialCount,
      'consumedMLUnits': ?consumedMLUnits,
      'hyperparameterMetricTag': ?hyperparameterMetricTag,
      'isBuiltInAlgorithmJob': ?isBuiltInAlgorithmJob,
      'isHyperparameterTuningJob': ?isHyperparameterTuningJob,
      'trials': ?trials == null ? null : pulumi.Input.encodeList<GoogleCloudMlV1HyperparameterOutput, Map<String, dynamic>>(trials!, (value) => value.toMap()),
    };
  }

  factory GoogleCloudMlV1TrainingOutput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1TrainingOutput(
      builtInAlgorithmOutput: map['builtInAlgorithmOutput'] == null ? null : GoogleCloudMlV1BuiltInAlgorithmOutput.fromMap((map['builtInAlgorithmOutput'] as Map).cast<String, dynamic>()),
      completedTrialCount: map['completedTrialCount'] == null ? null : map['completedTrialCount'] as String,
      consumedMLUnits: map['consumedMLUnits'] == null ? null : map['consumedMLUnits'] as double,
      hyperparameterMetricTag: map['hyperparameterMetricTag'] == null ? null : map['hyperparameterMetricTag'] as String,
      isBuiltInAlgorithmJob: map['isBuiltInAlgorithmJob'] == null ? null : map['isBuiltInAlgorithmJob'] as bool,
      isHyperparameterTuningJob: map['isHyperparameterTuningJob'] == null ? null : map['isHyperparameterTuningJob'] as bool,
      trials: map['trials'] == null ? null : pulumi.Input.decodeList<GoogleCloudMlV1HyperparameterOutput>(map['trials'], (value) => GoogleCloudMlV1HyperparameterOutput.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

