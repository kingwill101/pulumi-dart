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
  const ClusterLoggingInfoBrokerLogs({
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
      cloudwatchLogs: (() { final guardedValue = map['cloudwatchLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterLoggingInfoBrokerLogsCloudwatchLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firehose: (() { final guardedValue = map['firehose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterLoggingInfoBrokerLogsFirehose.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterLoggingInfoBrokerLogsS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

