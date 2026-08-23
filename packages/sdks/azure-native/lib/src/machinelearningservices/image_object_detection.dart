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
  /// Enum for setting log verbosity.
  final pulumi.Input<String>? logVerbosity;
  /// Settings used for training the model.
  final pulumi.Input<ImageModelSettingsObjectDetection>? modelSettings;
  /// Primary metrics for Image ObjectDetection task.
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
  /// [logVerbosity] Enum for setting log verbosity.
  /// [modelSettings] Settings used for training the model.
  /// [primaryMetric] Primary metrics for Image ObjectDetection task.
  /// [searchSpace] Search space for sampling different combinations of models and their hyperparameters.
  /// [sweepSettings] Model sweeping and hyperparameter sweeping related settings.
  /// [targetColumnName] Target column name: This is prediction values column.
  /// [taskType] AutoMLJob Task type.
  /// [trainingData] [Required] Training data input.
  /// [validationData] Validation data inputs.
  /// [validationDataSize] The fraction of training dataset that needs to be set aside for validation purpose.
  const ImageObjectDetection({
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
      limitSettings: pulumi.Input.fromValue(ImageLimitSettings.fromMap((map['limitSettings']! as Map).cast<String, dynamic>())),
      logVerbosity: (() { final guardedValue = map['logVerbosity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelSettings: (() { final guardedValue = map['modelSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageModelSettingsObjectDetection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      primaryMetric: (() { final guardedValue = map['primaryMetric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchSpace: (() { final guardedValue = map['searchSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageModelDistributionSettingsObjectDetection>(guardedValue, (value) => ImageModelDistributionSettingsObjectDetection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sweepSettings: (() { final guardedValue = map['sweepSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageSweepSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetColumnName: (() { final guardedValue = map['targetColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
      trainingData: pulumi.Input.fromValue(MLTableJobInput.fromMap((map['trainingData']! as Map).cast<String, dynamic>())),
      validationData: (() { final guardedValue = map['validationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MLTableJobInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validationDataSize: (() { final guardedValue = map['validationDataSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
