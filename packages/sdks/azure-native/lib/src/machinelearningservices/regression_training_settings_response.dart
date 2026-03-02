// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_ensemble_settings_response.dart';

/// Regression Training related configuration.
class RegressionTrainingSettingsResponse {
  /// Allowed models for regression task.
  final pulumi.Input<List<String>>? allowedTrainingAlgorithms;
  /// Blocked models for regression task.
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
  final pulumi.Input<StackEnsembleSettingsResponse>? stackEnsembleSettings;

  /// Creates a new [RegressionTrainingSettingsResponse].
  /// [allowedTrainingAlgorithms] Allowed models for regression task.
  /// [blockedTrainingAlgorithms] Blocked models for regression task.
  /// [enableDnnTraining] Enable recommendation of DNN models.
  /// [enableModelExplainability] Flag to turn on explainability on best model.
  /// [enableOnnxCompatibleModels] Flag for enabling onnx compatible models.
  /// [enableStackEnsemble] Enable stack ensemble run.
  /// [enableVoteEnsemble] Enable voting ensemble run.
  /// [ensembleModelDownloadTimeout] During VotingEnsemble and StackEnsemble model generation, multiple fitted models from the previous child runs are downloaded.
  /// [stackEnsembleSettings] Stack ensemble settings for stack ensemble run.
  RegressionTrainingSettingsResponse({
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
      'stackEnsembleSettings': ?pulumi.Input.mapOptionalInputValue<StackEnsembleSettingsResponse, Map<String, dynamic>>(stackEnsembleSettings, (value) => value.toMap()),
    };
  }

  factory RegressionTrainingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return RegressionTrainingSettingsResponse(
      allowedTrainingAlgorithms: map['allowedTrainingAlgorithms'] == null ? null : ((map['allowedTrainingAlgorithms']! as List).cast<String>()).input(),
      blockedTrainingAlgorithms: map['blockedTrainingAlgorithms'] == null ? null : ((map['blockedTrainingAlgorithms']! as List).cast<String>()).input(),
      enableDnnTraining: map['enableDnnTraining'] == null ? null : (map['enableDnnTraining']! as bool).input(),
      enableModelExplainability: map['enableModelExplainability'] == null ? null : (map['enableModelExplainability']! as bool).input(),
      enableOnnxCompatibleModels: map['enableOnnxCompatibleModels'] == null ? null : (map['enableOnnxCompatibleModels']! as bool).input(),
      enableStackEnsemble: map['enableStackEnsemble'] == null ? null : (map['enableStackEnsemble']! as bool).input(),
      enableVoteEnsemble: map['enableVoteEnsemble'] == null ? null : (map['enableVoteEnsemble']! as bool).input(),
      ensembleModelDownloadTimeout: map['ensembleModelDownloadTimeout'] == null ? null : (map['ensembleModelDownloadTimeout']! as String).input(),
      stackEnsembleSettings: map['stackEnsembleSettings'] == null ? null : (StackEnsembleSettingsResponse.fromMap((map['stackEnsembleSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

