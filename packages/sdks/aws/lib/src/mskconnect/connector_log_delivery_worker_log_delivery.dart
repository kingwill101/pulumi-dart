// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_log_delivery_worker_log_delivery_cloudwatch_logs.dart';
import 'connector_log_delivery_worker_log_delivery_firehose.dart';
import 'connector_log_delivery_worker_log_delivery_s3.dart';

class ConnectorLogDeliveryWorkerLogDelivery {
  /// Details about delivering logs to Amazon CloudWatch Logs. See `cloudwatch_logs` Block for details.
  final pulumi.Input<ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs>? cloudwatchLogs;
  /// Details about delivering logs to Amazon Kinesis Data Firehose. See `firehose` Block for details.
  final pulumi.Input<ConnectorLogDeliveryWorkerLogDeliveryFirehose>? firehose;
  /// Details about delivering logs to Amazon S3. See `s3` Block for deetails.
  final pulumi.Input<ConnectorLogDeliveryWorkerLogDeliveryS3>? s3;

  /// Creates a new [ConnectorLogDeliveryWorkerLogDelivery].
  /// [cloudwatchLogs] Details about delivering logs to Amazon CloudWatch Logs. See `cloudwatch_logs` Block for details.
  /// [firehose] Details about delivering logs to Amazon Kinesis Data Firehose. See `firehose` Block for details.
  /// [s3] Details about delivering logs to Amazon S3. See `s3` Block for deetails.
  ConnectorLogDeliveryWorkerLogDelivery({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogs': ?pulumi.Input.mapOptionalInputValue<ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs, Map<String, dynamic>>(cloudwatchLogs, (value) => value.toMap()),
      'firehose': ?pulumi.Input.mapOptionalInputValue<ConnectorLogDeliveryWorkerLogDeliveryFirehose, Map<String, dynamic>>(firehose, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<ConnectorLogDeliveryWorkerLogDeliveryS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory ConnectorLogDeliveryWorkerLogDelivery.fromMap(Map<String, dynamic> map) {
    return ConnectorLogDeliveryWorkerLogDelivery(
      cloudwatchLogs: (() { final guardedValue = map['cloudwatchLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firehose: (() { final guardedValue = map['firehose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorLogDeliveryWorkerLogDeliveryFirehose.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorLogDeliveryWorkerLogDeliveryS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

