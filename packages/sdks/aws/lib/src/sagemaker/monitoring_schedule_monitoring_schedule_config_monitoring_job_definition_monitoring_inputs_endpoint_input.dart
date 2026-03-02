// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsEndpointInput {
  /// Monitoring jobs subtract this time from the end time.
  final pulumi.Input<String>? endTimeOffset;
  /// Endpoint in customer's account which has enabled `DataCaptureConfig`.
  final pulumi.Input<String> endpointName;
  /// Attributes of the input data to exclude from the analysis.
  final pulumi.Input<String>? excludeFeaturesAttribute;
  /// Attributes of the input data that are the input features.
  final pulumi.Input<String>? featuresAttribute;
  /// Attribute of the input data that represents the ground truth label.
  final pulumi.Input<String>? inferenceAttribute;
  /// Path to the filesystem where the endpoint data is available to the container.
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

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsEndpointInput].
  /// [endTimeOffset] Monitoring jobs subtract this time from the end time.
  /// [endpointName] Endpoint in customer's account which has enabled `DataCaptureConfig`.
  /// [excludeFeaturesAttribute] Attributes of the input data to exclude from the analysis.
  /// [featuresAttribute] Attributes of the input data that are the input features.
  /// [inferenceAttribute] Attribute of the input data that represents the ground truth label.
  /// [localPath] Path to the filesystem where the endpoint data is available to the container.
  /// [probabilityAttribute] In a classification problem, the attribute that represents the class probability.
  /// [probabilityThresholdAttribute] Threshold for the class probability to be evaluated as a positive result.
  /// [s3DataDistributionType] Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Valid values: `FullyReplicated`, `ShardedByS3Key`.
  /// [s3InputMode] Input mode for transferring data for the monitoring job. Valid values: `Pipe`, `File`.
  /// [startTimeOffset] Monitoring jobs subtract this time from the start time.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsEndpointInput({
    this.endTimeOffset,
    required this.endpointName,
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
      'endTimeOffset': ?endTimeOffset,
      'endpointName': endpointName,
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

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsEndpointInput.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsEndpointInput(
      endTimeOffset: map['endTimeOffset'] == null ? null : (map['endTimeOffset'] as String).input(),
      endpointName: (map['endpointName'] as String).input(),
      excludeFeaturesAttribute: map['excludeFeaturesAttribute'] == null ? null : (map['excludeFeaturesAttribute'] as String).input(),
      featuresAttribute: map['featuresAttribute'] == null ? null : (map['featuresAttribute'] as String).input(),
      inferenceAttribute: map['inferenceAttribute'] == null ? null : (map['inferenceAttribute'] as String).input(),
      localPath: (map['localPath'] as String).input(),
      probabilityAttribute: map['probabilityAttribute'] == null ? null : (map['probabilityAttribute'] as String).input(),
      probabilityThresholdAttribute: map['probabilityThresholdAttribute'] == null ? null : (map['probabilityThresholdAttribute'] as double).input(),
      s3DataDistributionType: map['s3DataDistributionType'] == null ? null : (map['s3DataDistributionType'] as String).input(),
      s3InputMode: map['s3InputMode'] == null ? null : (map['s3InputMode'] as String).input(),
      startTimeOffset: map['startTimeOffset'] == null ? null : (map['startTimeOffset'] as String).input(),
    );
  }
}

