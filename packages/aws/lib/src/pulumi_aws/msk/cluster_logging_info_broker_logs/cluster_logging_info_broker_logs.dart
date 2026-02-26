// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_logging_info_broker_logs_cloudwatch_logs/cluster_logging_info_broker_logs_cloudwatch_logs.dart';
import '../cluster_logging_info_broker_logs_firehose/cluster_logging_info_broker_logs_firehose.dart';
import '../cluster_logging_info_broker_logs_s3/cluster_logging_info_broker_logs_s3.dart';

class ClusterLoggingInfoBrokerLogs {
  /// Configuration block for Cloudwatch Logs settings. See<span pulumi-lang-nodejs=" loggingInfo " pulumi-lang-dotnet=" LoggingInfo " pulumi-lang-go=" loggingInfo " pulumi-lang-python=" logging_info " pulumi-lang-yaml=" loggingInfo " pulumi-lang-java=" loggingInfo "> logging_info </span>broker_logs<span pulumi-lang-nodejs=" cloudwatchLogs " pulumi-lang-dotnet=" CloudwatchLogs " pulumi-lang-go=" cloudwatchLogs " pulumi-lang-python=" cloudwatch_logs " pulumi-lang-yaml=" cloudwatchLogs " pulumi-lang-java=" cloudwatchLogs "> cloudwatch_logs </span>Argument Reference below.
  final ClusterLoggingInfoBrokerLogsCloudwatchLogs? cloudwatchLogs;

  /// Configuration block for Kinesis Data Firehose settings. See<span pulumi-lang-nodejs=" loggingInfo " pulumi-lang-dotnet=" LoggingInfo " pulumi-lang-go=" loggingInfo " pulumi-lang-python=" logging_info " pulumi-lang-yaml=" loggingInfo " pulumi-lang-java=" loggingInfo "> logging_info </span>broker_logs firehose Argument Reference below.
  final ClusterLoggingInfoBrokerLogsFirehose? firehose;

  /// Configuration block for S3 settings. See<span pulumi-lang-nodejs=" loggingInfo " pulumi-lang-dotnet=" LoggingInfo " pulumi-lang-go=" loggingInfo " pulumi-lang-python=" logging_info " pulumi-lang-yaml=" loggingInfo " pulumi-lang-java=" loggingInfo "> logging_info </span>broker_logs s3 Argument Reference below.
  final ClusterLoggingInfoBrokerLogsS3? s3;

  ClusterLoggingInfoBrokerLogs({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchLogsValue = cloudwatchLogs;
    if (cloudwatchLogsValue != null) {
      map['cloudwatchLogs'] = cloudwatchLogsValue.toMap();
    }
    final firehoseValue = firehose;
    if (firehoseValue != null) {
      map['firehose'] = firehoseValue.toMap();
    }
    final s3Value = s3;
    if (s3Value != null) {
      map['s3'] = s3Value.toMap();
    }
    return map;
  }

  factory ClusterLoggingInfoBrokerLogs.fromMap(Map<String, dynamic> map) {
    return ClusterLoggingInfoBrokerLogs(
      cloudwatchLogs: map['cloudwatchLogs'] == null
          ? null
          : ClusterLoggingInfoBrokerLogsCloudwatchLogs.fromMap(
              (map['cloudwatchLogs'] as Map).cast<String, dynamic>()),
      firehose: map['firehose'] == null
          ? null
          : ClusterLoggingInfoBrokerLogsFirehose.fromMap(
              (map['firehose'] as Map).cast<String, dynamic>()),
      s3: map['s3'] == null
          ? null
          : ClusterLoggingInfoBrokerLogsS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}
