// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_log_configuration_cloudwatch_logs_log_destination.dart';
import 'pipe_log_configuration_firehose_log_destination.dart';
import 'pipe_log_configuration_s3_log_destination.dart';

class PipeLogConfiguration {
  /// Amazon CloudWatch Logs logging configuration settings for the pipe. Detailed below.
  final pulumi.Input<PipeLogConfigurationCloudwatchLogsLogDestination>? cloudwatchLogsLogDestination;
  /// Amazon Kinesis Data Firehose logging configuration settings for the pipe. Detailed below.
  final pulumi.Input<PipeLogConfigurationFirehoseLogDestination>? firehoseLogDestination;
  /// String list that specifies whether the execution data (specifically, the `payload`, `awsRequest`, and `awsResponse` fields) is included in the log messages for this pipe. This applies to all log destinations for the pipe. Valid values `ALL`.
  final pulumi.Input<List<String>>? includeExecutionDatas;
  /// The level of logging detail to include. Valid values `OFF`, `ERROR`, `INFO` and `TRACE`.
  final pulumi.Input<String> level;
  /// Amazon S3 logging configuration settings for the pipe. Detailed below.
  final pulumi.Input<PipeLogConfigurationS3LogDestination>? s3LogDestination;

  /// Creates a new [PipeLogConfiguration].
  /// [cloudwatchLogsLogDestination] Amazon CloudWatch Logs logging configuration settings for the pipe. Detailed below.
  /// [firehoseLogDestination] Amazon Kinesis Data Firehose logging configuration settings for the pipe. Detailed below.
  /// [includeExecutionDatas] String list that specifies whether the execution data (specifically, the `payload`, `awsRequest`, and `awsResponse` fields) is included in the log messages for this pipe. This applies to all log destinations for the pipe. Valid values `ALL`.
  /// [level] The level of logging detail to include. Valid values `OFF`, `ERROR`, `INFO` and `TRACE`.
  /// [s3LogDestination] Amazon S3 logging configuration settings for the pipe. Detailed below.
  PipeLogConfiguration({
    this.cloudwatchLogsLogDestination,
    this.firehoseLogDestination,
    this.includeExecutionDatas,
    required this.level,
    this.s3LogDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogsLogDestination': ?pulumi.Input.mapOptionalInputValue<PipeLogConfigurationCloudwatchLogsLogDestination, Map<String, dynamic>>(cloudwatchLogsLogDestination, (value) => value.toMap()),
      'firehoseLogDestination': ?pulumi.Input.mapOptionalInputValue<PipeLogConfigurationFirehoseLogDestination, Map<String, dynamic>>(firehoseLogDestination, (value) => value.toMap()),
      'includeExecutionDatas': ?includeExecutionDatas,
      'level': level,
      's3LogDestination': ?pulumi.Input.mapOptionalInputValue<PipeLogConfigurationS3LogDestination, Map<String, dynamic>>(s3LogDestination, (value) => value.toMap()),
    };
  }

  factory PipeLogConfiguration.fromMap(Map<String, dynamic> map) {
    return PipeLogConfiguration(
      cloudwatchLogsLogDestination: (() { final guardedValue = map['cloudwatchLogsLogDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeLogConfigurationCloudwatchLogsLogDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firehoseLogDestination: (() { final guardedValue = map['firehoseLogDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeLogConfigurationFirehoseLogDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includeExecutionDatas: (() { final guardedValue = map['includeExecutionDatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      level: pulumi.Input.fromValue(map['level'] as String),
      s3LogDestination: (() { final guardedValue = map['s3LogDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeLogConfigurationS3LogDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

