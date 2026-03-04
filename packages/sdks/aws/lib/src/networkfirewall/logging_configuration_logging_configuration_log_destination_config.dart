// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoggingConfigurationLoggingConfigurationLogDestinationConfig {
  /// A map describing the logging destination for the chosen `log_destination_type`.
  /// * For an Amazon S3 bucket, specify the key `bucketName` with the name of the bucket and optionally specify the key `prefix` with a path (Do not add a leading / in the `prefix` as the configuration will have two // when applied).
  /// * For a CloudWatch log group, specify the key `logGroup` with the name of the CloudWatch log group.
  /// * For a Kinesis Data Firehose delivery stream, specify the key `deliveryStream` with the name of the delivery stream.
  final pulumi.Input<Map<String, String>> logDestination;

  /// The location to send logs to. Valid values: `S3`, `CloudWatchLogs`, `KinesisDataFirehose`.
  final pulumi.Input<String> logDestinationType;

  /// The type of log to send. Valid values: `ALERT` or `FLOW` or `TLS`. Alert logs report traffic that matches a `StatefulRule` with an action setting that sends a log message. Flow logs are standard network traffic flow logs.
  final pulumi.Input<String> logType;

  /// Creates a new [LoggingConfigurationLoggingConfigurationLogDestinationConfig].
  /// [logDestination] A map describing the logging destination for the chosen `log_destination_type`.
  /// [logDestinationType] The location to send logs to. Valid values: `S3`, `CloudWatchLogs`, `KinesisDataFirehose`.
  /// [logType] The type of log to send. Valid values: `ALERT` or `FLOW` or `TLS`. Alert logs report traffic that matches a `StatefulRule` with an action setting that sends a log message. Flow logs are standard network traffic flow logs.
  LoggingConfigurationLoggingConfigurationLogDestinationConfig({
    required this.logDestination,
    required this.logDestinationType,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDestination': logDestination,
      'logDestinationType': logDestinationType,
      'logType': logType,
    };
  }

  factory LoggingConfigurationLoggingConfigurationLogDestinationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoggingConfigurationLoggingConfigurationLogDestinationConfig(
      logDestination: pulumi.Input.fromValue(
        (map['logDestination'] as Map).cast<String, String>(),
      ),
      logDestinationType: pulumi.Input.fromValue(
        map['logDestinationType'] as String,
      ),
      logType: pulumi.Input.fromValue(map['logType'] as String),
    );
  }
}
