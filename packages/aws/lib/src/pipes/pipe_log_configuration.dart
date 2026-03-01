// ignore_for_file: unused_element, unnecessary_cast

import 'pipe_log_configuration_cloudwatch_logs_log_destination.dart';
import 'pipe_log_configuration_firehose_log_destination.dart';
import 'pipe_log_configuration_s3_log_destination.dart';

class PipeLogConfiguration {
  /// Amazon CloudWatch Logs logging configuration settings for the pipe. Detailed below.
  final PipeLogConfigurationCloudwatchLogsLogDestination? cloudwatchLogsLogDestination;
  /// Amazon Kinesis Data Firehose logging configuration settings for the pipe. Detailed below.
  final PipeLogConfigurationFirehoseLogDestination? firehoseLogDestination;
  /// String list that specifies whether the execution data (specifically, the `payload`, `awsRequest`, and `awsResponse` fields) is included in the log messages for this pipe. This applies to all log destinations for the pipe. Valid values `ALL`.
  final List<String>? includeExecutionDatas;
  /// The level of logging detail to include. Valid values `OFF`, `ERROR`, `INFO` and `TRACE`.
  final String level;
  /// Amazon S3 logging configuration settings for the pipe. Detailed below.
  final PipeLogConfigurationS3LogDestination? s3LogDestination;

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
      'cloudwatchLogsLogDestination': ?cloudwatchLogsLogDestination == null ? null : cloudwatchLogsLogDestination!.toMap(),
      'firehoseLogDestination': ?firehoseLogDestination == null ? null : firehoseLogDestination!.toMap(),
      'includeExecutionDatas': ?includeExecutionDatas,
      'level': level,
      's3LogDestination': ?s3LogDestination == null ? null : s3LogDestination!.toMap(),
    };
  }

  factory PipeLogConfiguration.fromMap(Map<String, dynamic> map) {
    return PipeLogConfiguration(
      cloudwatchLogsLogDestination: map['cloudwatchLogsLogDestination'] == null ? null : PipeLogConfigurationCloudwatchLogsLogDestination.fromMap((map['cloudwatchLogsLogDestination'] as Map).cast<String, dynamic>()),
      firehoseLogDestination: map['firehoseLogDestination'] == null ? null : PipeLogConfigurationFirehoseLogDestination.fromMap((map['firehoseLogDestination'] as Map).cast<String, dynamic>()),
      includeExecutionDatas: map['includeExecutionDatas'] == null ? null : (map['includeExecutionDatas'] as List).cast<String>(),
      level: map['level'] as String,
      s3LogDestination: map['s3LogDestination'] == null ? null : PipeLogConfigurationS3LogDestination.fromMap((map['s3LogDestination'] as Map).cast<String, dynamic>()),
    );
  }
}

