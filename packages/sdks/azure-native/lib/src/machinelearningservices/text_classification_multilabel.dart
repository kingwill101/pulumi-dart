// ignore_for_file: unused_element, unnecessary_cast

import 'mltable_job_input.dart';
import 'nlp_vertical_featurization_settings.dart';
import 'nlp_vertical_limit_settings.dart';

/// Text Classification Multilabel task in AutoML NLP vertical.
/// NLP - Natural Language Processing.
class TextClassificationMultilabel {
  /// Featurization inputs needed for AutoML job.
  final NlpVerticalFeaturizationSettings? featurizationSettings;
  /// Execution constraints for AutoMLJob.
  final NlpVerticalLimitSettings? limitSettings;
  /// Log verbosity for the job.
  final String? logVerbosity;
  /// Target column name: This is prediction values column.
  /// Also known as label column name in context of classification tasks.
  final String? targetColumnName;
  /// AutoMLJob Task type.
  /// Expected value is 'TextClassificationMultilabel'.
  final String taskType;
  /// [Required] Training data input.
  final MLTableJobInput trainingData;
  /// Validation data inputs.
  final MLTableJobInput? validationData;

  /// Creates a new [TextClassificationMultilabel].
  /// [featurizationSettings] Featurization inputs needed for AutoML job.
  /// [limitSettings] Execution constraints for AutoMLJob.
  /// [logVerbosity] Log verbosity for the job.
  /// [targetColumnName] Target column name: This is prediction values column.
  /// [taskType] AutoMLJob Task type.
  /// [trainingData] [Required] Training data input.
  /// [validationData] Validation data inputs.
  TextClassificationMultilabel({
    this.featurizationSettings,
    this.limitSettings,
    this.logVerbosity,
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
      'targetColumnName': ?targetColumnName,
      'taskType': taskType,
      'trainingData': trainingData.toMap(),
      'validationData': ?validationData == null ? null : validationData!.toMap(),
    };
  }

  factory TextClassificationMultilabel.fromMap(Map<String, dynamic> map) {
    return TextClassificationMultilabel(
      featurizationSettings: map['featurizationSettings'] == null ? null : NlpVerticalFeaturizationSettings.fromMap((map['featurizationSettings'] as Map).cast<String, dynamic>()),
      limitSettings: map['limitSettings'] == null ? null : NlpVerticalLimitSettings.fromMap((map['limitSettings'] as Map).cast<String, dynamic>()),
      logVerbosity: map['logVerbosity'] == null ? null : map['logVerbosity'] as String,
      targetColumnName: map['targetColumnName'] == null ? null : map['targetColumnName'] as String,
      taskType: map['taskType'] as String,
      trainingData: MLTableJobInput.fromMap((map['trainingData'] as Map).cast<String, dynamic>()),
      validationData: map['validationData'] == null ? null : MLTableJobInput.fromMap((map['validationData'] as Map).cast<String, dynamic>()),
    );
  }
}

