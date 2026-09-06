// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mltable_job_input.dart';
import 'nlp_vertical_featurization_settings.dart';
import 'nlp_vertical_limit_settings.dart';

/// Text Classification task in AutoML NLP vertical.
/// NLP - Natural Language Processing.
class TextClassification {
  /// Featurization inputs needed for AutoML job.
  final pulumi.Input<NlpVerticalFeaturizationSettings?>? featurizationSettings;
  /// Execution constraints for AutoMLJob.
  final pulumi.Input<NlpVerticalLimitSettings?>? limitSettings;
  /// Enum for setting log verbosity.
  final pulumi.Input<dynamic>? logVerbosity;
  /// Primary metrics for classification tasks.
  final pulumi.Input<dynamic>? primaryMetric;
  /// Target column name: This is prediction values column.
  /// Also known as label column name in context of classification tasks.
  final pulumi.Input<String?>? targetColumnName;
  /// AutoMLJob Task type.
  /// Expected value is 'TextClassification'.
  final pulumi.Input<String> taskType;
  /// [Required] Training data input.
  final pulumi.Input<MLTableJobInput> trainingData;
  /// Validation data inputs.
  final pulumi.Input<MLTableJobInput?>? validationData;

  /// Creates a new [TextClassification].
  /// [featurizationSettings] Featurization inputs needed for AutoML job.
  /// [limitSettings] Execution constraints for AutoMLJob.
  /// [logVerbosity] Enum for setting log verbosity.
  /// [primaryMetric] Primary metrics for classification tasks.
  /// [targetColumnName] Target column name: This is prediction values column.
  /// [taskType] AutoMLJob Task type.
  /// [trainingData] [Required] Training data input.
  /// [validationData] Validation data inputs.
  TextClassification({
    this.featurizationSettings,
    this.limitSettings,
    pulumi.Input<dynamic>? logVerbosity,
    pulumi.Input<dynamic>? primaryMetric,
    this.targetColumnName,
    required this.taskType,
    required this.trainingData,
    this.validationData,
  }) : logVerbosity = logVerbosity ?? pulumi.Input.fromValue('Info'), primaryMetric = primaryMetric ?? pulumi.Input.fromValue('Accuracy');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featurizationSettings': ?pulumi.Input.mapOptionalInputValue<NlpVerticalFeaturizationSettings, Map<String, dynamic>>(featurizationSettings, (value) => value.toMap()),
      'limitSettings': ?pulumi.Input.mapOptionalInputValue<NlpVerticalLimitSettings, Map<String, dynamic>>(limitSettings, (value) => value.toMap()),
      'logVerbosity': ?logVerbosity,
      'primaryMetric': ?primaryMetric,
      'targetColumnName': ?targetColumnName,
      'taskType': taskType,
      'trainingData': pulumi.Input.mapInputValue<MLTableJobInput, Map<String, dynamic>>(trainingData, (value) => value.toMap()),
      'validationData': ?pulumi.Input.mapOptionalInputValue<MLTableJobInput, Map<String, dynamic>>(validationData, (value) => value.toMap()),
    };
  }

  factory TextClassification.fromMap(Map<String, dynamic> map) {
    return TextClassification(
      featurizationSettings: (() { final guardedValue = map['featurizationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NlpVerticalFeaturizationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      limitSettings: (() { final guardedValue = map['limitSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NlpVerticalLimitSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logVerbosity: (() { final guardedValue = map['logVerbosity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      primaryMetric: (() { final guardedValue = map['primaryMetric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      targetColumnName: (() { final guardedValue = map['targetColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
      trainingData: pulumi.Input.fromValue(MLTableJobInput.fromMap((map['trainingData']! as Map).cast<String, dynamic>())),
      validationData: (() { final guardedValue = map['validationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MLTableJobInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
