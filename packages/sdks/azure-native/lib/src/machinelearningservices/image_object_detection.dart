// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_limit_settings.dart';
import 'image_model_distribution_settings_object_detection.dart';
import 'image_model_settings_object_detection.dart';
import 'image_sweep_settings.dart';
import 'mltable_job_input.dart';

/// Image Object Detection. Object detection is used to identify objects in an image and locate each object with a
/// bounding box e.g. locate all dogs and cats in an image and draw a bounding box around each.
class ImageObjectDetection {
  /// [Required] Limit settings for the AutoML job.
  final pulumi.Input<ImageLimitSettings> limitSettings;
  /// Log verbosity for the job.
  final pulumi.Input<String>? logVerbosity;
  /// Settings used for training the model.
  final pulumi.Input<ImageModelSettingsObjectDetection>? modelSettings;
  /// Primary metric to optimize for this task.
  final pulumi.Input<String>? primaryMetric;
  /// Search space for sampling different combinations of models and their hyperparameters.
  final pulumi.Input<List<ImageModelDistributionSettingsObjectDetection>>? searchSpace;
  /// Model sweeping and hyperparameter sweeping related settings.
  final pulumi.Input<ImageSweepSettings>? sweepSettings;
  /// Target column name: This is prediction values column.
  /// Also known as label column name in context of classification tasks.
  final pulumi.Input<String>? targetColumnName;
  /// AutoMLJob Task type.
  /// Expected value is 'ImageObjectDetection'.
  final pulumi.Input<String> taskType;
  /// [Required] Training data input.
  final pulumi.Input<MLTableJobInput> trainingData;
  /// Validation data inputs.
  final pulumi.Input<MLTableJobInput>? validationData;
  /// The fraction of training dataset that needs to be set aside for validation purpose.
  /// Values between (0.0 , 1.0)
  /// Applied when validation dataset is not provided.
  final pulumi.Input<double>? validationDataSize;

  /// Creates a new [ImageObjectDetection].
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
  ImageObjectDetection({
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
      'limitSettings': pulumi.Input.mapInputValue<ImageLimitSettings, Map<String, dynamic>>(limitSettings, (value) => value.toMap()),
      'logVerbosity': ?logVerbosity,
      'modelSettings': ?pulumi.Input.mapOptionalInputValue<ImageModelSettingsObjectDetection, Map<String, dynamic>>(modelSettings, (value) => value.toMap()),
      'primaryMetric': ?primaryMetric,
      'searchSpace': ?pulumi.Input.mapOptionalInputValue<List<ImageModelDistributionSettingsObjectDetection>, List<Map<String, dynamic>>>(searchSpace, (value) => pulumi.Input.encodeList<ImageModelDistributionSettingsObjectDetection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sweepSettings': ?pulumi.Input.mapOptionalInputValue<ImageSweepSettings, Map<String, dynamic>>(sweepSettings, (value) => value.toMap()),
      'targetColumnName': ?targetColumnName,
      'taskType': taskType,
      'trainingData': pulumi.Input.mapInputValue<MLTableJobInput, Map<String, dynamic>>(trainingData, (value) => value.toMap()),
      'validationData': ?pulumi.Input.mapOptionalInputValue<MLTableJobInput, Map<String, dynamic>>(validationData, (value) => value.toMap()),
      'validationDataSize': ?validationDataSize,
    };
  }

  factory ImageObjectDetection.fromMap(Map<String, dynamic> map) {
    return ImageObjectDetection(
      limitSettings: (ImageLimitSettings.fromMap((map['limitSettings'] as Map).cast<String, dynamic>())).input(),
      logVerbosity: map['logVerbosity'] == null ? null : (map['logVerbosity']! as String).input(),
      modelSettings: map['modelSettings'] == null ? null : (ImageModelSettingsObjectDetection.fromMap((map['modelSettings']! as Map).cast<String, dynamic>())).input(),
      primaryMetric: map['primaryMetric'] == null ? null : (map['primaryMetric']! as String).input(),
      searchSpace: map['searchSpace'] == null ? null : (pulumi.Input.decodeList<ImageModelDistributionSettingsObjectDetection>(map['searchSpace']!, (value) => ImageModelDistributionSettingsObjectDetection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sweepSettings: map['sweepSettings'] == null ? null : (ImageSweepSettings.fromMap((map['sweepSettings']! as Map).cast<String, dynamic>())).input(),
      targetColumnName: map['targetColumnName'] == null ? null : (map['targetColumnName']! as String).input(),
      taskType: (map['taskType'] as String).input(),
      trainingData: (MLTableJobInput.fromMap((map['trainingData'] as Map).cast<String, dynamic>())).input(),
      validationData: map['validationData'] == null ? null : (MLTableJobInput.fromMap((map['validationData']! as Map).cast<String, dynamic>())).input(),
      validationDataSize: map['validationDataSize'] == null ? null : (map['validationDataSize']! as double).input(),
    );
  }
}

