// ignore_for_file: unused_element, unnecessary_cast

import '../monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_inputs_batch_transform_input_dataset_format/monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_inputs_batch_transform_input_dataset_format.dart';

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
    final map = <String, dynamic>{};
    map['dataCapturedDestinationS3Uri'] = dataCapturedDestinationS3Uri;
    map['datasetFormat'] = datasetFormat.toMap();
    final endTimeOffsetValue = endTimeOffset;
    if (endTimeOffsetValue != null) {
      map['endTimeOffset'] = endTimeOffsetValue;
    }
    final excludeFeaturesAttributeValue = excludeFeaturesAttribute;
    if (excludeFeaturesAttributeValue != null) {
      map['excludeFeaturesAttribute'] = excludeFeaturesAttributeValue;
    }
    final featuresAttributeValue = featuresAttribute;
    if (featuresAttributeValue != null) {
      map['featuresAttribute'] = featuresAttributeValue;
    }
    final inferenceAttributeValue = inferenceAttribute;
    if (inferenceAttributeValue != null) {
      map['inferenceAttribute'] = inferenceAttributeValue;
    }
    map['localPath'] = localPath;
    final probabilityAttributeValue = probabilityAttribute;
    if (probabilityAttributeValue != null) {
      map['probabilityAttribute'] = probabilityAttributeValue;
    }
    final probabilityThresholdAttributeValue = probabilityThresholdAttribute;
    if (probabilityThresholdAttributeValue != null) {
      map['probabilityThresholdAttribute'] = probabilityThresholdAttributeValue;
    }
    final s3DataDistributionTypeValue = s3DataDistributionType;
    if (s3DataDistributionTypeValue != null) {
      map['s3DataDistributionType'] = s3DataDistributionTypeValue;
    }
    final s3InputModeValue = s3InputMode;
    if (s3InputModeValue != null) {
      map['s3InputMode'] = s3InputModeValue;
    }
    final startTimeOffsetValue = startTimeOffset;
    if (startTimeOffsetValue != null) {
      map['startTimeOffset'] = startTimeOffsetValue;
    }
    return map;
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput.fromMap(
      Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput(
      dataCapturedDestinationS3Uri:
          map['dataCapturedDestinationS3Uri'] as String,
      datasetFormat:
          MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormat
              .fromMap((map['datasetFormat'] as Map).cast<String, dynamic>()),
      endTimeOffset:
          map['endTimeOffset'] == null ? null : map['endTimeOffset'] as String,
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
      s3InputMode:
          map['s3InputMode'] == null ? null : map['s3InputMode'] as String,
      startTimeOffset: map['startTimeOffset'] == null
          ? null
          : map['startTimeOffset'] as String,
    );
  }
}
