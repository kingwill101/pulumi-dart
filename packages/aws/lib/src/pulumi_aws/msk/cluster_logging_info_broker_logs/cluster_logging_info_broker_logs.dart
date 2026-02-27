// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_logging_info_broker_logs_cloudwatch_logs/cluster_logging_info_broker_logs_cloudwatch_logs.dart';
import '../cluster_logging_info_broker_logs_firehose/cluster_logging_info_broker_logs_firehose.dart';
import '../cluster_logging_info_broker_logs_s3/cluster_logging_info_broker_logs_s3.dart';

class ClusterLoggingInfoBrokerLogs {
  /// Configuration block for Cloudwatch Logs settings. See logging_info broker_logs cloudwatch_logs Argument Reference below.
  final ClusterLoggingInfoBrokerLogsCloudwatchLogs? cloudwatchLogs;

  /// Configuration block for Kinesis Data Firehose settings. See logging_info broker_logs firehose Argument Reference below.
  final ClusterLoggingInfoBrokerLogsFirehose? firehose;

  /// Configuration block for S3 settings. See logging_info broker_logs s3 Argument Reference below.
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
