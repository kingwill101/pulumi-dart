// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_limit_settings_response.dart';
import 'image_model_distribution_settings_object_detection_response.dart';
import 'image_model_settings_object_detection_response.dart';
import 'image_sweep_settings_response.dart';
import 'mltable_job_input_response.dart';

/// Image Object Detection. Object detection is used to identify objects in an image and locate each object with a
/// bounding box e.g. locate all dogs and cats in an image and draw a bounding box around each.
class ImageObjectDetectionResponse {
  /// [Required] Limit settings for the AutoML job.
  final pulumi.Input<ImageLimitSettingsResponse> limitSettings;
  /// Log verbosity for the job.
  final pulumi.Input<String>? logVerbosity;
  /// Settings used for training the model.
  final pulumi.Input<ImageModelSettingsObjectDetectionResponse>? modelSettings;
  /// Primary metric to optimize for this task.
  final pulumi.Input<String>? primaryMetric;
  /// Search space for sampling different combinations of models and their hyperparameters.
  final pulumi.Input<List<ImageModelDistributionSettingsObjectDetectionResponse>>? searchSpace;
  /// Model sweeping and hyperparameter sweeping related settings.
  final pulumi.Input<ImageSweepSettingsResponse>? sweepSettings;
  /// Target column name: This is prediction values column.
  /// Also known as label column name in context of classification tasks.
  final pulumi.Input<String>? targetColumnName;
  /// AutoMLJob Task type.
  /// Expected value is 'ImageObjectDetection'.
  final pulumi.Input<String> taskType;
  /// [Required] Training data input.
  final pulumi.Input<MLTableJobInputResponse> trainingData;
  /// Validation data inputs.
  final pulumi.Input<MLTableJobInputResponse>? validationData;
  /// The fraction of training dataset that needs to be set aside for validation purpose.
  /// Values between (0.0 , 1.0)
  /// Applied when validation dataset is not provided.
  final pulumi.Input<double>? validationDataSize;

  /// Creates a new [ImageObjectDetectionResponse].
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
  ImageObjectDetectionResponse({
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
      'modelSettings': ?pulumi.Input.mapOptionalInputValue<ImageModelSettingsObjectDetectionResponse, Map<String, dynamic>>(modelSettings, (value) => value.toMap()),
      'primaryMetric': ?primaryMetric,
      'searchSpace': ?pulumi.Input.mapOptionalInputValue<List<ImageModelDistributionSettingsObjectDetectionResponse>, List<Map<String, dynamic>>>(searchSpace, (value) => pulumi.Input.encodeList<ImageModelDistributionSettingsObjectDetectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sweepSettings': ?pulumi.Input.mapOptionalInputValue<ImageSweepSettingsResponse, Map<String, dynamic>>(sweepSettings, (value) => value.toMap()),
      'targetColumnName': ?targetColumnName,
      'taskType': taskType,
      'trainingData': pulumi.Input.mapInputValue<MLTableJobInputResponse, Map<String, dynamic>>(trainingData, (value) => value.toMap()),
      'validationData': ?pulumi.Input.mapOptionalInputValue<MLTableJobInputResponse, Map<String, dynamic>>(validationData, (value) => value.toMap()),
      'validationDataSize': ?validationDataSize,
    };
  }

  factory ImageObjectDetectionResponse.fromMap(Map<String, dynamic> map) {
    return ImageObjectDetectionResponse(
      limitSettings: (ImageLimitSettingsResponse.fromMap((map['limitSettings'] as Map).cast<String, dynamic>())).input(),
      logVerbosity: map['logVerbosity'] == null ? null : (map['logVerbosity']! as String).input(),
      modelSettings: map['modelSettings'] == null ? null : (ImageModelSettingsObjectDetectionResponse.fromMap((map['modelSettings']! as Map).cast<String, dynamic>())).input(),
      primaryMetric: map['primaryMetric'] == null ? null : (map['primaryMetric']! as String).input(),
      searchSpace: map['searchSpace'] == null ? null : (pulumi.Input.decodeList<ImageModelDistributionSettingsObjectDetectionResponse>(map['searchSpace']!, (value) => ImageModelDistributionSettingsObjectDetectionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sweepSettings: map['sweepSettings'] == null ? null : (ImageSweepSettingsResponse.fromMap((map['sweepSettings']! as Map).cast<String, dynamic>())).input(),
      targetColumnName: map['targetColumnName'] == null ? null : (map['targetColumnName']! as String).input(),
      taskType: (map['taskType'] as String).input(),
      trainingData: (MLTableJobInputResponse.fromMap((map['trainingData'] as Map).cast<String, dynamic>())).input(),
      validationData: map['validationData'] == null ? null : (MLTableJobInputResponse.fromMap((map['validationData']! as Map).cast<String, dynamic>())).input(),
      validationDataSize: map['validationDataSize'] == null ? null : (map['validationDataSize']! as double).input(),
    );
  }
}

