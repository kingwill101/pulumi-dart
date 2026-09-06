// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mltable_job_input_response.dart';
import 'nlp_vertical_featurization_settings_response.dart';
import 'nlp_vertical_limit_settings_response.dart';

/// Text Classification Multilabel task in AutoML NLP vertical.
/// NLP - Natural Language Processing.
class TextClassificationMultilabelResponse {
  /// Featurization inputs needed for AutoML job.
  final pulumi.Input<NlpVerticalFeaturizationSettingsResponse?>? featurizationSettings;
  /// Execution constraints for AutoMLJob.
  final pulumi.Input<NlpVerticalLimitSettingsResponse?>? limitSettings;
  /// Enum for setting log verbosity.
  final pulumi.Input<String?>? logVerbosity;
  /// Primary metric for Text-Classification-Multilabel task.
  /// Currently only Accuracy is supported as primary metric, hence user need not set it explicitly.
  final pulumi.Input<String> primaryMetric;
  /// Target column name: This is prediction values column.
  /// Also known as label column name in context of classification tasks.
  final pulumi.Input<String?>? targetColumnName;
  /// AutoMLJob Task type.
  /// Expected value is 'TextClassificationMultilabel'.
  final pulumi.Input<String> taskType;
  /// [Required] Training data input.
  final pulumi.Input<MLTableJobInputResponse> trainingData;
  /// Validation data inputs.
  final pulumi.Input<MLTableJobInputResponse?>? validationData;

  /// Creates a new [TextClassificationMultilabelResponse].
  /// [featurizationSettings] Featurization inputs needed for AutoML job.
  /// [limitSettings] Execution constraints for AutoMLJob.
  /// [logVerbosity] Enum for setting log verbosity.
  /// [primaryMetric] Primary metric for Text-Classification-Multilabel task.
  /// [targetColumnName] Target column name: This is prediction values column.
  /// [taskType] AutoMLJob Task type.
  /// [trainingData] [Required] Training data input.
  /// [validationData] Validation data inputs.
  TextClassificationMultilabelResponse({
    this.featurizationSettings,
    this.limitSettings,
    pulumi.Input<String?>? logVerbosity,
    required this.primaryMetric,
    this.targetColumnName,
    required this.taskType,
    required this.trainingData,
    this.validationData,
  }) : logVerbosity = logVerbosity ?? pulumi.Input.fromValue('Info');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featurizationSettings': ?pulumi.Input.mapOptionalInputValue<NlpVerticalFeaturizationSettingsResponse, Map<String, dynamic>>(featurizationSettings, (value) => value.toMap()),
      'limitSettings': ?pulumi.Input.mapOptionalInputValue<NlpVerticalLimitSettingsResponse, Map<String, dynamic>>(limitSettings, (value) => value.toMap()),
      'logVerbosity': ?logVerbosity,
      'primaryMetric': primaryMetric,
      'targetColumnName': ?targetColumnName,
      'taskType': taskType,
      'trainingData': pulumi.Input.mapInputValue<MLTableJobInputResponse, Map<String, dynamic>>(trainingData, (value) => value.toMap()),
      'validationData': ?pulumi.Input.mapOptionalInputValue<MLTableJobInputResponse, Map<String, dynamic>>(validationData, (value) => value.toMap()),
    };
  }

  factory TextClassificationMultilabelResponse.fromMap(Map<String, dynamic> map) {
    return TextClassificationMultilabelResponse(
      featurizationSettings: (() { final guardedValue = map['featurizationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NlpVerticalFeaturizationSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      limitSettings: (() { final guardedValue = map['limitSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NlpVerticalLimitSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logVerbosity: (() { final guardedValue = map['logVerbosity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryMetric: pulumi.Input.fromValue(map['primaryMetric'] as String),
      targetColumnName: (() { final guardedValue = map['targetColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
      trainingData: pulumi.Input.fromValue(MLTableJobInputResponse.fromMap((map['trainingData']! as Map).cast<String, dynamic>())),
      validationData: (() { final guardedValue = map['validationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MLTableJobInputResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
