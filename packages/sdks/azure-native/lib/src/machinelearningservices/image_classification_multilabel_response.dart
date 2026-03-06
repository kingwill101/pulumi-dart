// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_limit_settings_response.dart';
import 'image_model_distribution_settings_classification_response.dart';
import 'image_model_settings_classification_response.dart';
import 'image_sweep_settings_response.dart';
import 'mltable_job_input_response.dart';

/// Image Classification Multilabel. Multi-label image classification is used when an image could have one or more labels
/// from a set of labels - e.g. an image could be labeled with both 'cat' and 'dog'.
class ImageClassificationMultilabelResponse {
  /// [Required] Limit settings for the AutoML job.
  final pulumi.Input<ImageLimitSettingsResponse> limitSettings;
  /// Log verbosity for the job.
  final pulumi.Input<String>? logVerbosity;
  /// Settings used for training the model.
  final pulumi.Input<ImageModelSettingsClassificationResponse>? modelSettings;
  /// Primary metric to optimize for this task.
  final pulumi.Input<String>? primaryMetric;
  /// Search space for sampling different combinations of models and their hyperparameters.
  final pulumi.Input<List<ImageModelDistributionSettingsClassificationResponse>>? searchSpace;
  /// Model sweeping and hyperparameter sweeping related settings.
  final pulumi.Input<ImageSweepSettingsResponse>? sweepSettings;
  /// Target column name: This is prediction values column.
  /// Also known as label column name in context of classification tasks.
  final pulumi.Input<String>? targetColumnName;
  /// AutoMLJob Task type.
  /// Expected value is 'ImageClassificationMultilabel'.
  final pulumi.Input<String> taskType;
  /// [Required] Training data input.
  final pulumi.Input<MLTableJobInputResponse> trainingData;
  /// Validation data inputs.
  final pulumi.Input<MLTableJobInputResponse>? validationData;
  /// The fraction of training dataset that needs to be set aside for validation purpose.
  /// Values between (0.0 , 1.0)
  /// Applied when validation dataset is not provided.
  final pulumi.Input<double>? validationDataSize;

  /// Creates a new [ImageClassificationMultilabelResponse].
  /// [limitSettings] [Required] Limit settings for the AutoML job.
  /// [logVerbosity] Log verbosity for the job.
  /// [modelSettings] Settings used for training the model.
  /// [primaryMetric] Primary metric to optimize for this task.
  /// [searchSpace] Search space for sampling different combinations of models and their hyperparameters.
  /// [sweepSettings] Model sweeping and hyperparameter sweeping related settings.
  /// [targetColumnName] Target column name: This is prediction values column.
  /// [taskType] AutoMLJob Task type.
  /// [trainingData] [Required] Training data input.
  /// [validationData] Validation data inputs.
  /// [validationDataSize] The fraction of training dataset that needs to be set aside for validation purpose.
  const ImageClassificationMultilabelResponse({
    required this.limitSettings,
    this.logVerbosity,
    this.modelSettings,
    this.primaryMetric,
    this.searchSpace,
    this.sweepSettings,
    this.targetColumnName,
    required this.taskType,
    required this.trainingData,
    this.validationData,
    this.validationDataSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limitSettings': pulumi.Input.mapInputValue<ImageLimitSettingsResponse, Map<String, dynamic>>(limitSettings, (value) => value.toMap()),
      'logVerbosity': ?logVerbosity,
      'modelSettings': ?pulumi.Input.mapOptionalInputValue<ImageModelSettingsClassificationResponse, Map<String, dynamic>>(modelSettings, (value) => value.toMap()),
      'primaryMetric': ?primaryMetric,
      'searchSpace': ?pulumi.Input.mapOptionalInputValue<List<ImageModelDistributionSettingsClassificationResponse>, List<Map<String, dynamic>>>(searchSpace, (value) => pulumi.Input.encodeList<ImageModelDistributionSettingsClassificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sweepSettings': ?pulumi.Input.mapOptionalInputValue<ImageSweepSettingsResponse, Map<String, dynamic>>(sweepSettings, (value) => value.toMap()),
      'targetColumnName': ?targetColumnName,
      'taskType': taskType,
      'trainingData': pulumi.Input.mapInputValue<MLTableJobInputResponse, Map<String, dynamic>>(trainingData, (value) => value.toMap()),
      'validationData': ?pulumi.Input.mapOptionalInputValue<MLTableJobInputResponse, Map<String, dynamic>>(validationData, (value) => value.toMap()),
      'validationDataSize': ?validationDataSize,
    };
  }

  factory ImageClassificationMultilabelResponse.fromMap(Map<String, dynamic> map) {
    return ImageClassificationMultilabelResponse(
      limitSettings: pulumi.Input.fromValue(ImageLimitSettingsResponse.fromMap((map['limitSettings']! as Map).cast<String, dynamic>())),
      logVerbosity: (() { final guardedValue = map['logVerbosity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelSettings: (() { final guardedValue = map['modelSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageModelSettingsClassificationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      primaryMetric: (() { final guardedValue = map['primaryMetric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchSpace: (() { final guardedValue = map['searchSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageModelDistributionSettingsClassificationResponse>(guardedValue, (value) => ImageModelDistributionSettingsClassificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sweepSettings: (() { final guardedValue = map['sweepSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageSweepSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetColumnName: (() { final guardedValue = map['targetColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
      trainingData: pulumi.Input.fromValue(MLTableJobInputResponse.fromMap((map['trainingData']! as Map).cast<String, dynamic>())),
      validationData: (() { final guardedValue = map['validationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MLTableJobInputResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validationDataSize: (() { final guardedValue = map['validationDataSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

