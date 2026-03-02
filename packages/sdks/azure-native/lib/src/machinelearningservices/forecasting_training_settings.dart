// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_ensemble_settings.dart';

/// Forecasting Training related configuration.
class ForecastingTrainingSettings {
  /// Allowed models for forecasting task.
  final pulumi.Input<List<String>>? allowedTrainingAlgorithms;
  /// Blocked models for forecasting task.
  final pulumi.Input<List<String>>? blockedTrainingAlgorithms;
  /// Enable recommendation of DNN models.
  final pulumi.Input<bool>? enableDnnTraining;
  /// Flag to turn on explainability on best model.
  final pulumi.Input<bool>? enableModelExplainability;
  /// Flag for enabling onnx compatible models.
  final pulumi.Input<bool>? enableOnnxCompatibleModels;
  /// Enable stack ensemble run.
  final pulumi.Input<bool>? enableStackEnsemble;
  /// Enable voting ensemble run.
  final pulumi.Input<bool>? enableVoteEnsemble;
  /// During VotingEnsemble and StackEnsemble model generation, multiple fitted models from the previous child runs are downloaded.
  /// Configure this parameter with a higher value than 300 secs, if more time is needed.
  final pulumi.Input<String>? ensembleModelDownloadTimeout;
  /// Stack ensemble settings for stack ensemble run.
  final pulumi.Input<StackEnsembleSettings>? stackEnsembleSettings;

  /// Creates a new [ForecastingTrainingSettings].
  /// [allowedTrainingAlgorithms] Allowed models for forecasting task.
  /// [blockedTrainingAlgorithms] Blocked models for forecasting task.
  /// [enableDnnTraining] Enable recommendation of DNN models.
  /// [enableModelExplainability] Flag to turn on explainability on best model.
  /// [enableOnnxCompatibleModels] Flag for enabling onnx compatible models.
  /// [enableStackEnsemble] Enable stack ensemble run.
  /// [enableVoteEnsemble] Enable voting ensemble run.
  /// [ensembleModelDownloadTimeout] During VotingEnsemble and StackEnsemble model generation, multiple fitted models from the previous child runs are downloaded.
  /// [stackEnsembleSettings] Stack ensemble settings for stack ensemble run.
  ForecastingTrainingSettings({
    this.allowedTrainingAlgorithms,
    this.blockedTrainingAlgorithms,
    this.enableDnnTraining,
    this.enableModelExplainability,
    this.enableOnnxCompatibleModels,
    this.enableStackEnsemble,
    this.enableVoteEnsemble,
    this.ensembleModelDownloadTimeout,
    this.stackEnsembleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedTrainingAlgorithms': ?allowedTrainingAlgorithms,
      'blockedTrainingAlgorithms': ?blockedTrainingAlgorithms,
      'enableDnnTraining': ?enableDnnTraining,
      'enableModelExplainability': ?enableModelExplainability,
      'enableOnnxCompatibleModels': ?enableOnnxCompatibleModels,
      'enableStackEnsemble': ?enableStackEnsemble,
      'enableVoteEnsemble': ?enableVoteEnsemble,
      'ensembleModelDownloadTimeout': ?ensembleModelDownloadTimeout,
      'stackEnsembleSettings': ?pulumi.Input.mapOptionalInputValue<StackEnsembleSettings, Map<String, dynamic>>(stackEnsembleSettings, (value) => value.toMap()),
    };
  }

  factory ForecastingTrainingSettings.fromMap(Map<String, dynamic> map) {
    return ForecastingTrainingSettings(
      allowedTrainingAlgorithms: map['allowedTrainingAlgorithms'] == null ? null : ((map['allowedTrainingAlgorithms']! as List).cast<String>()).input(),
      blockedTrainingAlgorithms: map['blockedTrainingAlgorithms'] == null ? null : ((map['blockedTrainingAlgorithms']! as List).cast<String>()).input(),
      enableDnnTraining: map['enableDnnTraining'] == null ? null : (map['enableDnnTraining']! as bool).input(),
      enableModelExplainability: map['enableModelExplainability'] == null ? null : (map['enableModelExplainability']! as bool).input(),
      enableOnnxCompatibleModels: map['enableOnnxCompatibleModels'] == null ? null : (map['enableOnnxCompatibleModels']! as bool).input(),
      enableStackEnsemble: map['enableStackEnsemble'] == null ? null : (map['enableStackEnsemble']! as bool).input(),
      enableVoteEnsemble: map['enableVoteEnsemble'] == null ? null : (map['enableVoteEnsemble']! as bool).input(),
      ensembleModelDownloadTimeout: map['ensembleModelDownloadTimeout'] == null ? null : (map['ensembleModelDownloadTimeout']! as String).input(),
      stackEnsembleSettings: map['stackEnsembleSettings'] == null ? null : (StackEnsembleSettings.fromMap((map['stackEnsembleSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

