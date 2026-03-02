// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_logging_info_broker_logs_cloudwatch_logs.dart';
import 'cluster_logging_info_broker_logs_firehose.dart';
import 'cluster_logging_info_broker_logs_s3.dart';

class ClusterLoggingInfoBrokerLogs {
  /// Configuration block for Cloudwatch Logs settings. See logging_info broker_logs cloudwatch_logs Argument Reference below.
  final pulumi.Input<ClusterLoggingInfoBrokerLogsCloudwatchLogs>? cloudwatchLogs;
  /// Configuration block for Kinesis Data Firehose settings. See logging_info broker_logs firehose Argument Reference below.
  final pulumi.Input<ClusterLoggingInfoBrokerLogsFirehose>? firehose;
  /// Configuration block for S3 settings. See logging_info broker_logs s3 Argument Reference below.
  final pulumi.Input<ClusterLoggingInfoBrokerLogsS3>? s3;

  /// Creates a new [ClusterLoggingInfoBrokerLogs].
  /// [cloudwatchLogs] Configuration block for Cloudwatch Logs settings. See logging_info broker_logs cloudwatch_logs Argument Reference below.
  /// [firehose] Configuration block for Kinesis Data Firehose settings. See logging_info broker_logs firehose Argument Reference below.
  /// [s3] Configuration block for S3 settings. See logging_info broker_logs s3 Argument Reference below.
  ClusterLoggingInfoBrokerLogs({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogs': ?pulumi.Input.mapOptionalInputValue<ClusterLoggingInfoBrokerLogsCloudwatchLogs, Map<String, dynamic>>(cloudwatchLogs, (value) => value.toMap()),
      'firehose': ?pulumi.Input.mapOptionalInputValue<ClusterLoggingInfoBrokerLogsFirehose, Map<String, dynamic>>(firehose, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<ClusterLoggingInfoBrokerLogsS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory ClusterLoggingInfoBrokerLogs.fromMap(Map<String, dynamic> map) {
    return ClusterLoggingInfoBrokerLogs(
      cloudwatchLogs: map['cloudwatchLogs'] == null ? null : ((ClusterLoggingInfoBrokerLogsCloudwatchLogs.fromMap((map['cloudwatchLogs']! as Map).cast<String, dynamic>())).input()).input(),
      firehose: map['firehose'] == null ? null : ((ClusterLoggingInfoBrokerLogsFirehose.fromMap((map['firehose']! as Map).cast<String, dynamic>())).input()).input(),
      s3: map['s3'] == null ? null : ((ClusterLoggingInfoBrokerLogsS3.fromMap((map['s3']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

