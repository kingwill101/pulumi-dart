// ignore_for_file: unused_element, unnecessary_cast

import '../connector_log_delivery_worker_log_delivery_cloudwatch_logs/connector_log_delivery_worker_log_delivery_cloudwatch_logs.dart';
import '../connector_log_delivery_worker_log_delivery_firehose/connector_log_delivery_worker_log_delivery_firehose.dart';
import '../connector_log_delivery_worker_log_delivery_s3/connector_log_delivery_worker_log_delivery_s3.dart';

class ConnectorLogDeliveryWorkerLogDelivery {
  /// Details about delivering logs to Amazon CloudWatch Logs. See `cloudwatch_logs` Block for details.
  final ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs? cloudwatchLogs;

  /// Details about delivering logs to Amazon Kinesis Data Firehose. See `firehose` Block for details.
  final ConnectorLogDeliveryWorkerLogDeliveryFirehose? firehose;

  /// Details about delivering logs to Amazon S3. See `s3` Block for deetails.
  final ConnectorLogDeliveryWorkerLogDeliveryS3? s3;

  ConnectorLogDeliveryWorkerLogDelivery({
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

  factory ConnectorLogDeliveryWorkerLogDelivery.fromMap(
      Map<String, dynamic> map) {
    return ConnectorLogDeliveryWorkerLogDelivery(
      cloudwatchLogs: map['cloudwatchLogs'] == null
          ? null
          : ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs.fromMap(
              (map['cloudwatchLogs'] as Map).cast<String, dynamic>()),
      firehose: map['firehose'] == null
          ? null
          : ConnectorLogDeliveryWorkerLogDeliveryFirehose.fromMap(
              (map['firehose'] as Map).cast<String, dynamic>()),
      s3: map['s3'] == null
          ? null
          : ConnectorLogDeliveryWorkerLogDeliveryS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}
