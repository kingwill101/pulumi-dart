// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_limit_settings_response.dart';
import 'image_model_distribution_settings_object_detection_response.dart';
import 'image_model_settings_object_detection_response.dart';
import 'image_sweep_settings_response.dart';
import 'mltable_job_input_response.dart';

/// Image Instance Segmentation. Instance segmentation is used to identify objects in an image at the pixel level,
/// drawing a polygon around each object in the image.
class ImageInstanceSegmentationResponse {
  /// [Required] Limit settings for the AutoML job.
  final ImageLimitSettingsResponse limitSettings;
  /// Log verbosity for the job.
  final String? logVerbosity;
  /// Settings used for training the model.
  final ImageModelSettingsObjectDetectionResponse? modelSettings;
  /// Primary metric to optimize for this task.
  final String? primaryMetric;
  /// Search space for sampling different combinations of models and their hyperparameters.
  final List<ImageModelDistributionSettingsObjectDetectionResponse>? searchSpace;
  /// Model sweeping and hyperparameter sweeping related settings.
  final ImageSweepSettingsResponse? sweepSettings;
  /// Target column name: This is prediction values column.
  /// Also known as label column name in context of classification tasks.
  final String? targetColumnName;
  /// AutoMLJob Task type.
  /// Expected value is 'ImageInstanceSegmentation'.
  final String taskType;
  /// [Required] Training data input.
  final MLTableJobInputResponse trainingData;
  /// Validation data inputs.
  final MLTableJobInputResponse? validationData;
  /// The fraction of training dataset that needs to be set aside for validation purpose.
  /// Values between (0.0 , 1.0)
  /// Applied when validation dataset is not provided.
  final double? validationDataSize;

  /// Creates a new [ImageInstanceSegmentationResponse].
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
  ImageInstanceSegmentationResponse({
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
      'limitSettings': limitSettings.toMap(),
      'logVerbosity': ?logVerbosity,
      'modelSettings': ?modelSettings == null ? null : modelSettings!.toMap(),
      'primaryMetric': ?primaryMetric,
      'searchSpace': ?searchSpace == null ? null : pulumi.Input.encodeList<ImageModelDistributionSettingsObjectDetectionResponse, Map<String, dynamic>>(searchSpace!, (value) => value.toMap()),
      'sweepSettings': ?sweepSettings == null ? null : sweepSettings!.toMap(),
      'targetColumnName': ?targetColumnName,
      'taskType': taskType,
      'trainingData': trainingData.toMap(),
      'validationData': ?validationData == null ? null : validationData!.toMap(),
      'validationDataSize': ?validationDataSize,
    };
  }

  factory ImageInstanceSegmentationResponse.fromMap(Map<String, dynamic> map) {
    return ImageInstanceSegmentationResponse(
      limitSettings: ImageLimitSettingsResponse.fromMap((map['limitSettings'] as Map).cast<String, dynamic>()),
      logVerbosity: map['logVerbosity'] == null ? null : map['logVerbosity'] as String,
      modelSettings: map['modelSettings'] == null ? null : ImageModelSettingsObjectDetectionResponse.fromMap((map['modelSettings'] as Map).cast<String, dynamic>()),
      primaryMetric: map['primaryMetric'] == null ? null : map['primaryMetric'] as String,
      searchSpace: map['searchSpace'] == null ? null : pulumi.Input.decodeList<ImageModelDistributionSettingsObjectDetectionResponse>(map['searchSpace'], (value) => ImageModelDistributionSettingsObjectDetectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      sweepSettings: map['sweepSettings'] == null ? null : ImageSweepSettingsResponse.fromMap((map['sweepSettings'] as Map).cast<String, dynamic>()),
      targetColumnName: map['targetColumnName'] == null ? null : map['targetColumnName'] as String,
      taskType: map['taskType'] as String,
      trainingData: MLTableJobInputResponse.fromMap((map['trainingData'] as Map).cast<String, dynamic>()),
      validationData: map['validationData'] == null ? null : MLTableJobInputResponse.fromMap((map['validationData'] as Map).cast<String, dynamic>()),
      validationDataSize: map['validationDataSize'] == null ? null : map['validationDataSize'] as double,
    );
  }
}

