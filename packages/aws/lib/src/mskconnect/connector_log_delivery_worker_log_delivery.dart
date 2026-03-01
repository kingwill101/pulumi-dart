// ignore_for_file: unused_element, unnecessary_cast

import 'connector_log_delivery_worker_log_delivery_cloudwatch_logs.dart';
import 'connector_log_delivery_worker_log_delivery_firehose.dart';
import 'connector_log_delivery_worker_log_delivery_s3.dart';

class ConnectorLogDeliveryWorkerLogDelivery {
  /// Details about delivering logs to Amazon CloudWatch Logs. See `cloudwatch_logs` Block for details.
  final ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs? cloudwatchLogs;

  /// Details about delivering logs to Amazon Kinesis Data Firehose. See `firehose` Block for details.
  final ConnectorLogDeliveryWorkerLogDeliveryFirehose? firehose;

  /// Details about delivering logs to Amazon S3. See `s3` Block for deetails.
  final ConnectorLogDeliveryWorkerLogDeliveryS3? s3;

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
      'cloudwatchLogs': ?cloudwatchLogs == null
          ? null
          : cloudwatchLogs!.toMap(),
      'firehose': ?firehose == null ? null : firehose!.toMap(),
      's3': ?s3 == null ? null : s3!.toMap(),
    };
  }

  factory ConnectorLogDeliveryWorkerLogDelivery.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorLogDeliveryWorkerLogDelivery(
      cloudwatchLogs: map['cloudwatchLogs'] == null
          ? null
          : ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs.fromMap(
              (map['cloudwatchLogs'] as Map).cast<String, dynamic>(),
            ),
      firehose: map['firehose'] == null
          ? null
          : ConnectorLogDeliveryWorkerLogDeliveryFirehose.fromMap(
              (map['firehose'] as Map).cast<String, dynamic>(),
            ),
      s3: map['s3'] == null
          ? null
          : ConnectorLogDeliveryWorkerLogDeliveryS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
