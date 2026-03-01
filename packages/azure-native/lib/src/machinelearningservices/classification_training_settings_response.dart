// ignore_for_file: unused_element, unnecessary_cast

import 'stack_ensemble_settings_response.dart';

/// Classification Training related configuration.
class ClassificationTrainingSettingsResponse {
  /// Allowed models for classification task.
  final List<String>? allowedTrainingAlgorithms;
  /// Blocked models for classification task.
  final List<String>? blockedTrainingAlgorithms;
  /// Enable recommendation of DNN models.
  final bool? enableDnnTraining;
  /// Flag to turn on explainability on best model.
  final bool? enableModelExplainability;
  /// Flag for enabling onnx compatible models.
  final bool? enableOnnxCompatibleModels;
  /// Enable stack ensemble run.
  final bool? enableStackEnsemble;
  /// Enable voting ensemble run.
  final bool? enableVoteEnsemble;
  /// During VotingEnsemble and StackEnsemble model generation, multiple fitted models from the previous child runs are downloaded.
  /// Configure this parameter with a higher value than 300 secs, if more time is needed.
  final String? ensembleModelDownloadTimeout;
  /// Stack ensemble settings for stack ensemble run.
  final StackEnsembleSettingsResponse? stackEnsembleSettings;

  /// Creates a new [ClassificationTrainingSettingsResponse].
  /// [allowedTrainingAlgorithms] Allowed models for classification task.
  /// [blockedTrainingAlgorithms] Blocked models for classification task.
  /// [enableDnnTraining] Enable recommendation of DNN models.
  /// [enableModelExplainability] Flag to turn on explainability on best model.
  /// [enableOnnxCompatibleModels] Flag for enabling onnx compatible models.
  /// [enableStackEnsemble] Enable stack ensemble run.
  /// [enableVoteEnsemble] Enable voting ensemble run.
  /// [ensembleModelDownloadTimeout] During VotingEnsemble and StackEnsemble model generation, multiple fitted models from the previous child runs are downloaded.
  /// [stackEnsembleSettings] Stack ensemble settings for stack ensemble run.
  ClassificationTrainingSettingsResponse({
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
      'stackEnsembleSettings': ?stackEnsembleSettings == null ? null : stackEnsembleSettings!.toMap(),
    };
  }

  factory ClassificationTrainingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ClassificationTrainingSettingsResponse(
      allowedTrainingAlgorithms: map['allowedTrainingAlgorithms'] == null ? null : (map['allowedTrainingAlgorithms'] as List).cast<String>(),
      blockedTrainingAlgorithms: map['blockedTrainingAlgorithms'] == null ? null : (map['blockedTrainingAlgorithms'] as List).cast<String>(),
      enableDnnTraining: map['enableDnnTraining'] == null ? null : map['enableDnnTraining'] as bool,
      enableModelExplainability: map['enableModelExplainability'] == null ? null : map['enableModelExplainability'] as bool,
      enableOnnxCompatibleModels: map['enableOnnxCompatibleModels'] == null ? null : map['enableOnnxCompatibleModels'] as bool,
      enableStackEnsemble: map['enableStackEnsemble'] == null ? null : map['enableStackEnsemble'] as bool,
      enableVoteEnsemble: map['enableVoteEnsemble'] == null ? null : map['enableVoteEnsemble'] as bool,
      ensembleModelDownloadTimeout: map['ensembleModelDownloadTimeout'] == null ? null : map['ensembleModelDownloadTimeout'] as String,
      stackEnsembleSettings: map['stackEnsembleSettings'] == null ? null : StackEnsembleSettingsResponse.fromMap((map['stackEnsembleSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

