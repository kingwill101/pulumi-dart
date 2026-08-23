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
  const MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsEndpointInput({
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
      endTimeOffset: (() { final guardedValue = map['endTimeOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
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
