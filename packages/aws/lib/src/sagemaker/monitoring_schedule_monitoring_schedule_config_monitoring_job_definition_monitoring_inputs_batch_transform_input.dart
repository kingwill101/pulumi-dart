// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_inputs_batch_transform_input_dataset_format.dart';

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput {
  /// Amazon S3 location being used to capture the data.
  final String dataCapturedDestinationS3Uri;

  /// Dataset format for the batch transform job. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormat
  datasetFormat;

  /// Monitoring jobs subtract this time from the end time.
  final String? endTimeOffset;

  /// Attributes of the input data to exclude from the analysis.
  final String? excludeFeaturesAttribute;

  /// Attributes of the input data that are the input features.
  final String? featuresAttribute;

  /// Attribute of the input data that represents the ground truth label.
  final String? inferenceAttribute;

  /// Path to the filesystem where the batch transform data is available to the container.
  final String localPath;

  /// In a classification problem, the attribute that represents the class probability.
  final String? probabilityAttribute;

  /// Threshold for the class probability to be evaluated as a positive result.
  final double? probabilityThresholdAttribute;

  /// Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Valid values: `FullyReplicated`, `ShardedByS3Key`.
  final String? s3DataDistributionType;

  /// Input mode for transferring data for the monitoring job. Valid values: `Pipe`, `File`.
  final String? s3InputMode;

  /// Monitoring jobs subtract this time from the start time.
  final String? startTimeOffset;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput].
  /// [dataCapturedDestinationS3Uri] Amazon S3 location being used to capture the data.
  /// [datasetFormat] Dataset format for the batch transform job. Fields are documented below.
  /// [endTimeOffset] Monitoring jobs subtract this time from the end time.
  /// [excludeFeaturesAttribute] Attributes of the input data to exclude from the analysis.
  /// [featuresAttribute] Attributes of the input data that are the input features.
  /// [inferenceAttribute] Attribute of the input data that represents the ground truth label.
  /// [localPath] Path to the filesystem where the batch transform data is available to the container.
  /// [probabilityAttribute] In a classification problem, the attribute that represents the class probability.
  /// [probabilityThresholdAttribute] Threshold for the class probability to be evaluated as a positive result.
  /// [s3DataDistributionType] Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Valid values: `FullyReplicated`, `ShardedByS3Key`.
  /// [s3InputMode] Input mode for transferring data for the monitoring job. Valid values: `Pipe`, `File`.
  /// [startTimeOffset] Monitoring jobs subtract this time from the start time.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput({
    required this.dataCapturedDestinationS3Uri,
    required this.datasetFormat,
    this.endTimeOffset,
    this.excludeFeaturesAttribute,
    this.featuresAttribute,
    this.inferenceAttribute,
    required this.localPath,
    this.probabilityAttribute,
    this.probabilityThresholdAttribute,
    this.s3DataDistributionType,
    this.s3InputMode,
    this.startTimeOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCapturedDestinationS3Uri': dataCapturedDestinationS3Uri,
      'datasetFormat': datasetFormat.toMap(),
      'endTimeOffset': ?endTimeOffset,
      'excludeFeaturesAttribute': ?excludeFeaturesAttribute,
      'featuresAttribute': ?featuresAttribute,
      'inferenceAttribute': ?inferenceAttribute,
      'localPath': localPath,
      'probabilityAttribute': ?probabilityAttribute,
      'probabilityThresholdAttribute': ?probabilityThresholdAttribute,
      's3DataDistributionType': ?s3DataDistributionType,
      's3InputMode': ?s3InputMode,
      'startTimeOffset': ?startTimeOffset,
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput.fromMap(
    Map<String, dynamic> map,
  ) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput(
      dataCapturedDestinationS3Uri:
          map['dataCapturedDestinationS3Uri'] as String,
      datasetFormat:
          MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormat.fromMap(
            (map['datasetFormat'] as Map).cast<String, dynamic>(),
          ),
      endTimeOffset: map['endTimeOffset'] == null
          ? null
          : map['endTimeOffset'] as String,
      excludeFeaturesAttribute: map['excludeFeaturesAttribute'] == null
          ? null
          : map['excludeFeaturesAttribute'] as String,
      featuresAttribute: map['featuresAttribute'] == null
          ? null
          : map['featuresAttribute'] as String,
      inferenceAttribute: map['inferenceAttribute'] == null
          ? null
          : map['inferenceAttribute'] as String,
      localPath: map['localPath'] as String,
      probabilityAttribute: map['probabilityAttribute'] == null
          ? null
          : map['probabilityAttribute'] as String,
      probabilityThresholdAttribute:
          map['probabilityThresholdAttribute'] == null
          ? null
          : map['probabilityThresholdAttribute'] as double,
      s3DataDistributionType: map['s3DataDistributionType'] == null
          ? null
          : map['s3DataDistributionType'] as String,
      s3InputMode: map['s3InputMode'] == null
          ? null
          : map['s3InputMode'] as String,
      startTimeOffset: map['startTimeOffset'] == null
          ? null
          : map['startTimeOffset'] as String,
    );
  }
}
