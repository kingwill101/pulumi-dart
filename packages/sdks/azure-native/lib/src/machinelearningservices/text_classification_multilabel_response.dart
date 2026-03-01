// ignore_for_file: unused_element, unnecessary_cast

import 'mltable_job_input_response.dart';
import 'nlp_vertical_featurization_settings_response.dart';
import 'nlp_vertical_limit_settings_response.dart';

/// Text Classification Multilabel task in AutoML NLP vertical.
/// NLP - Natural Language Processing.
class TextClassificationMultilabelResponse {
  /// Featurization inputs needed for AutoML job.
  final NlpVerticalFeaturizationSettingsResponse? featurizationSettings;
  /// Execution constraints for AutoMLJob.
  final NlpVerticalLimitSettingsResponse? limitSettings;
  /// Log verbosity for the job.
  final String? logVerbosity;
  /// Primary metric for Text-Classification-Multilabel task.
  /// Currently only Accuracy is supported as primary metric, hence user need not set it explicitly.
  final String primaryMetric;
  /// Target column name: This is prediction values column.
  /// Also known as label column name in context of classification tasks.
  final String? targetColumnName;
  /// AutoMLJob Task type.
  /// Expected value is 'TextClassificationMultilabel'.
  final String taskType;
  /// [Required] Training data input.
  final MLTableJobInputResponse trainingData;
  /// Validation data inputs.
  final MLTableJobInputResponse? validationData;

  /// Creates a new [TextClassificationMultilabelResponse].
  /// [featurizationSettings] Featurization inputs needed for AutoML job.
  /// [limitSettings] Execution constraints for AutoMLJob.
  /// [logVerbosity] Log verbosity for the job.
  /// [primaryMetric] Primary metric for Text-Classification-Multilabel task.
  /// [targetColumnName] Target column name: This is prediction values column.
  /// [taskType] AutoMLJob Task type.
  /// [trainingData] [Required] Training data input.
  /// [validationData] Validation data inputs.
  TextClassificationMultilabelResponse({
    this.featurizationSettings,
    this.limitSettings,
    this.logVerbosity,
    required this.primaryMetric,
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
      'primaryMetric': primaryMetric,
      'targetColumnName': ?targetColumnName,
      'taskType': taskType,
      'trainingData': trainingData.toMap(),
      'validationData': ?validationData == null ? null : validationData!.toMap(),
    };
  }

  factory TextClassificationMultilabelResponse.fromMap(Map<String, dynamic> map) {
    return TextClassificationMultilabelResponse(
      featurizationSettings: map['featurizationSettings'] == null ? null : NlpVerticalFeaturizationSettingsResponse.fromMap((map['featurizationSettings'] as Map).cast<String, dynamic>()),
      limitSettings: map['limitSettings'] == null ? null : NlpVerticalLimitSettingsResponse.fromMap((map['limitSettings'] as Map).cast<String, dynamic>()),
      logVerbosity: map['logVerbosity'] == null ? null : map['logVerbosity'] as String,
      primaryMetric: map['primaryMetric'] as String,
      targetColumnName: map['targetColumnName'] == null ? null : map['targetColumnName'] as String,
      taskType: map['taskType'] as String,
      trainingData: MLTableJobInputResponse.fromMap((map['trainingData'] as Map).cast<String, dynamic>()),
      validationData: map['validationData'] == null ? null : MLTableJobInputResponse.fromMap((map['validationData'] as Map).cast<String, dynamic>()),
    );
  }
}

