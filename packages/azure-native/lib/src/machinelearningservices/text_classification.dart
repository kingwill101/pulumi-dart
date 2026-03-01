// ignore_for_file: unused_element, unnecessary_cast

import 'mltable_job_input.dart';
import 'nlp_vertical_featurization_settings.dart';
import 'nlp_vertical_limit_settings.dart';

/// Text Classification task in AutoML NLP vertical.
/// NLP - Natural Language Processing.
class TextClassification {
  /// Featurization inputs needed for AutoML job.
  final NlpVerticalFeaturizationSettings? featurizationSettings;
  /// Execution constraints for AutoMLJob.
  final NlpVerticalLimitSettings? limitSettings;
  /// Log verbosity for the job.
  final String? logVerbosity;
  /// Primary metric for Text-Classification task.
  final String? primaryMetric;
  /// Target column name: This is prediction values column.
  /// Also known as label column name in context of classification tasks.
  final String? targetColumnName;
  /// AutoMLJob Task type.
  /// Expected value is 'TextClassification'.
  final String taskType;
  /// [Required] Training data input.
  final MLTableJobInput trainingData;
  /// Validation data inputs.
  final MLTableJobInput? validationData;

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
      'featurizationSettings': ?featurizationSettings == null ? null : featurizationSettings!.toMap(),
      'limitSettings': ?limitSettings == null ? null : limitSettings!.toMap(),
      'logVerbosity': ?logVerbosity,
      'primaryMetric': ?primaryMetric,
      'targetColumnName': ?targetColumnName,
      'taskType': taskType,
      'trainingData': trainingData.toMap(),
      'validationData': ?validationData == null ? null : validationData!.toMap(),
    };
  }

  factory TextClassification.fromMap(Map<String, dynamic> map) {
    return TextClassification(
      featurizationSettings: map['featurizationSettings'] == null ? null : NlpVerticalFeaturizationSettings.fromMap((map['featurizationSettings'] as Map).cast<String, dynamic>()),
      limitSettings: map['limitSettings'] == null ? null : NlpVerticalLimitSettings.fromMap((map['limitSettings'] as Map).cast<String, dynamic>()),
      logVerbosity: map['logVerbosity'] == null ? null : map['logVerbosity'] as String,
      primaryMetric: map['primaryMetric'] == null ? null : map['primaryMetric'] as String,
      targetColumnName: map['targetColumnName'] == null ? null : map['targetColumnName'] as String,
      taskType: map['taskType'] as String,
      trainingData: MLTableJobInput.fromMap((map['trainingData'] as Map).cast<String, dynamic>()),
      validationData: map['validationData'] == null ? null : MLTableJobInput.fromMap((map['validationData'] as Map).cast<String, dynamic>()),
    );
  }
}

