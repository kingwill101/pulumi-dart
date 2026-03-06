// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_inputs_batch_transform_input_dataset_format.dart';

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput {
  /// Amazon S3 location being used to capture the data.
  final pulumi.Input<String> dataCapturedDestinationS3Uri;
  /// Dataset format for the batch transform job. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormat> datasetFormat;
  /// Monitoring jobs subtract this time from the end time.
  final pulumi.Input<String>? endTimeOffset;
  /// Attributes of the input data to exclude from the analysis.
  final pulumi.Input<String>? excludeFeaturesAttribute;
  /// Attributes of the input data that are the input features.
  final pulumi.Input<String>? featuresAttribute;
  /// Attribute of the input data that represents the ground truth label.
  final pulumi.Input<String>? inferenceAttribute;
  /// Path to the filesystem where the batch transform data is available to the container.
  final pulumi.Input<String> localPath;
  /// In a classification problem, the attribute that represents the class probability.
  final pulumi.Input<String>? probabilityAttribute;
  /// Threshold for the class probability to be evaluated as a positive result.
  final pulumi.Input<double>? probabilityThresholdAttribute;
  /// Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Valid values: `FullyReplicated`, `ShardedByS3Key`.
  final pulumi.Input<String>? s3DataDistributionType;
  /// Input mode for transferring data for the monitoring job. Valid values: `Pipe`, `File`.
  final pulumi.Input<String>? s3InputMode;
  /// Monitoring jobs subtract this time from the start time.
  final pulumi.Input<String>? startTimeOffset;

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
  const MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput({
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
      'datasetFormat': pulumi.Input.mapInputValue<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormat, Map<String, dynamic>>(datasetFormat, (value) => value.toMap()),
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

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput(
      dataCapturedDestinationS3Uri: pulumi.Input.fromValue(map['dataCapturedDestinationS3Uri'] as String),
      datasetFormat: pulumi.Input.fromValue(MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormat.fromMap((map['datasetFormat']! as Map).cast<String, dynamic>())),
      endTimeOffset: (() { final guardedValue = map['endTimeOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeFeaturesAttribute: (() { final guardedValue = map['excludeFeaturesAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featuresAttribute: (() { final guardedValue = map['featuresAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inferenceAttribute: (() { final guardedValue = map['inferenceAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localPath: pulumi.Input.fromValue(map['localPath'] as String),
      probabilityAttribute: (() { final guardedValue = map['probabilityAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      probabilityThresholdAttribute: (() { final guardedValue = map['probabilityThresholdAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      s3DataDistributionType: (() { final guardedValue = map['s3DataDistributionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3InputMode: (() { final guardedValue = map['s3InputMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTimeOffset: (() { final guardedValue = map['startTimeOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

