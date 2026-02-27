// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
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
    final map = <String, dynamic>{};
    final builtInAlgorithmOutputValue = builtInAlgorithmOutput;
    if (builtInAlgorithmOutputValue != null) {
      map['builtInAlgorithmOutput'] = builtInAlgorithmOutputValue.toMap();
    }
    final completedTrialCountValue = completedTrialCount;
    if (completedTrialCountValue != null) {
      map['completedTrialCount'] = completedTrialCountValue;
    }
    final consumedMLUnitsValue = consumedMLUnits;
    if (consumedMLUnitsValue != null) {
      map['consumedMLUnits'] = consumedMLUnitsValue;
    }
    final hyperparameterMetricTagValue = hyperparameterMetricTag;
    if (hyperparameterMetricTagValue != null) {
      map['hyperparameterMetricTag'] = hyperparameterMetricTagValue;
    }
    final isBuiltInAlgorithmJobValue = isBuiltInAlgorithmJob;
    if (isBuiltInAlgorithmJobValue != null) {
      map['isBuiltInAlgorithmJob'] = isBuiltInAlgorithmJobValue;
    }
    final isHyperparameterTuningJobValue = isHyperparameterTuningJob;
    if (isHyperparameterTuningJobValue != null) {
      map['isHyperparameterTuningJob'] = isHyperparameterTuningJobValue;
    }
    final trialsValue = trials;
    if (trialsValue != null) {
      map['trials'] = Input.encodeList<GoogleCloudMlV1HyperparameterOutput,
          Map<String, dynamic>>(trialsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudMlV1TrainingOutput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1TrainingOutput(
      builtInAlgorithmOutput: map['builtInAlgorithmOutput'] == null
          ? null
          : GoogleCloudMlV1BuiltInAlgorithmOutput.fromMap(
              (map['builtInAlgorithmOutput'] as Map).cast<String, dynamic>()),
      completedTrialCount: map['completedTrialCount'] == null
          ? null
          : map['completedTrialCount'] as String,
      consumedMLUnits: map['consumedMLUnits'] == null
          ? null
          : map['consumedMLUnits'] as double,
      hyperparameterMetricTag: map['hyperparameterMetricTag'] == null
          ? null
          : map['hyperparameterMetricTag'] as String,
      isBuiltInAlgorithmJob: map['isBuiltInAlgorithmJob'] == null
          ? null
          : map['isBuiltInAlgorithmJob'] as bool,
      isHyperparameterTuningJob: map['isHyperparameterTuningJob'] == null
          ? null
          : map['isHyperparameterTuningJob'] as bool,
      trials: map['trials'] == null
          ? null
          : Input.decodeList<GoogleCloudMlV1HyperparameterOutput>(
              map['trials'],
              (value) => GoogleCloudMlV1HyperparameterOutput.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
