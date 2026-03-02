// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mltable_job_input.dart';
import 'nlp_vertical_featurization_settings.dart';
import 'nlp_vertical_limit_settings.dart';

/// Text Classification task in AutoML NLP vertical.
/// NLP - Natural Language Processing.
class TextClassification {
  /// Featurization inputs needed for AutoML job.
  final pulumi.Input<NlpVerticalFeaturizationSettings>? featurizationSettings;
  /// Execution constraints for AutoMLJob.
  final pulumi.Input<NlpVerticalLimitSettings>? limitSettings;
  /// Log verbosity for the job.
  final pulumi.Input<String>? logVerbosity;
  /// Primary metric for Text-Classification task.
  final pulumi.Input<String>? primaryMetric;
  /// Target column name: This is prediction values column.
  /// Also known as label column name in context of classification tasks.
  final pulumi.Input<String>? targetColumnName;
  /// AutoMLJob Task type.
  /// Expected value is 'TextClassification'.
  final pulumi.Input<String> taskType;
  /// [Required] Training data input.
  final pulumi.Input<MLTableJobInput> trainingData;
  /// Validation data inputs.
  final pulumi.Input<MLTableJobInput>? validationData;

  /// Creates a new [TextClassification].
  /// [featurizationSettings] Featurization inputs needed for AutoML job.
  /// [limitSettings] Execution constraints for AutoMLJob.
  /// [logVerbosity] Log verbosity for the job.
  /// [primaryMetric] Primary metric for Text-Classification task.
  /// [targetColumnName] Target column name: This is prediction values column.
  /// [taskType] AutoMLJob Task type.
  /// [trainingData] [Required] Training data input.
  /// [validationData] Validation data inputs.
  TextClassification({
    this.featurizationSettings,
    this.limitSettings,
    this.logVerbosity,
    this.primaryMetric,
    this.targetColumnName,
    required this.taskType,
    required this.trainingData,
    this.validationData,
  });

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
      featurizationSettings: map['featurizationSettings'] == null ? null : (NlpVerticalFeaturizationSettings.fromMap((map['featurizationSettings'] as Map).cast<String, dynamic>())).input(),
      limitSettings: map['limitSettings'] == null ? null : (NlpVerticalLimitSettings.fromMap((map['limitSettings'] as Map).cast<String, dynamic>())).input(),
      logVerbosity: map['logVerbosity'] == null ? null : (map['logVerbosity'] as String).input(),
      primaryMetric: map['primaryMetric'] == null ? null : (map['primaryMetric'] as String).input(),
      targetColumnName: map['targetColumnName'] == null ? null : (map['targetColumnName'] as String).input(),
      taskType: (map['taskType'] as String).input(),
      trainingData: (MLTableJobInput.fromMap((map['trainingData'] as Map).cast<String, dynamic>())).input(),
      validationData: map['validationData'] == null ? null : (MLTableJobInput.fromMap((map['validationData'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

