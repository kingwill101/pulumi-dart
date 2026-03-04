// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_ensemble_settings.dart';

/// Classification Training related configuration.
class ClassificationTrainingSettings {
  /// Allowed models for classification task.
  final pulumi.Input<List<String>>? allowedTrainingAlgorithms;

  /// Blocked models for classification task.
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

  /// Creates a new [ClassificationTrainingSettings].
  /// [allowedTrainingAlgorithms] Allowed models for classification task.
  /// [blockedTrainingAlgorithms] Blocked models for classification task.
  /// [enableDnnTraining] Enable recommendation of DNN models.
  /// [enableModelExplainability] Flag to turn on explainability on best model.
  /// [enableOnnxCompatibleModels] Flag for enabling onnx compatible models.
  /// [enableStackEnsemble] Enable stack ensemble run.
  /// [enableVoteEnsemble] Enable voting ensemble run.
  /// [ensembleModelDownloadTimeout] During VotingEnsemble and StackEnsemble model generation, multiple fitted models from the previous child runs are downloaded.
  /// [stackEnsembleSettings] Stack ensemble settings for stack ensemble run.
  ClassificationTrainingSettings({
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
      'stackEnsembleSettings':
          ?pulumi.Input.mapOptionalInputValue<
            StackEnsembleSettings,
            Map<String, dynamic>
          >(stackEnsembleSettings, (value) => value.toMap()),
    };
  }

  factory ClassificationTrainingSettings.fromMap(Map<String, dynamic> map) {
    return ClassificationTrainingSettings(
      allowedTrainingAlgorithms: (() {
        final guardedValue = map['allowedTrainingAlgorithms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      blockedTrainingAlgorithms: (() {
        final guardedValue = map['blockedTrainingAlgorithms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      enableDnnTraining: (() {
        final guardedValue = map['enableDnnTraining'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableModelExplainability: (() {
        final guardedValue = map['enableModelExplainability'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableOnnxCompatibleModels: (() {
        final guardedValue = map['enableOnnxCompatibleModels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableStackEnsemble: (() {
        final guardedValue = map['enableStackEnsemble'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableVoteEnsemble: (() {
        final guardedValue = map['enableVoteEnsemble'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ensembleModelDownloadTimeout: (() {
        final guardedValue = map['ensembleModelDownloadTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackEnsembleSettings: (() {
        final guardedValue = map['stackEnsembleSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StackEnsembleSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
