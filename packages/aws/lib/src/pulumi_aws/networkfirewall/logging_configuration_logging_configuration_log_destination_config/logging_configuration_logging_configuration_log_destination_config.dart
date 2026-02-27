// ignore_for_file: unused_element, unnecessary_cast

class LoggingConfigurationLoggingConfigurationLogDestinationConfig {
  /// A map describing the logging destination for the chosen `log_destination_type`.
  /// * For an Amazon S3 bucket, specify the key `bucketName` with the name of the bucket and optionally specify the key `prefix` with a path (Do not add a leading / in the `prefix` as the configuration will have two // when applied).
  /// * For a CloudWatch log group, specify the key `logGroup` with the name of the CloudWatch log group.
  /// * For a Kinesis Data Firehose delivery stream, specify the key `deliveryStream` with the name of the delivery stream.
  final Map<String, String> logDestination;

  /// The location to send logs to. Valid values: `S3`, `CloudWatchLogs`, `KinesisDataFirehose`.
  final String logDestinationType;

  /// The type of log to send. Valid values: `ALERT` or `FLOW` or `TLS`. Alert logs report traffic that matches a `StatefulRule` with an action setting that sends a log message. Flow logs are standard network traffic flow logs.
  final String logType;

  LoggingConfigurationLoggingConfigurationLogDestinationConfig({
    required this.logDestination,
    required this.logDestinationType,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logDestination'] = logDestination;
    map['logDestinationType'] = logDestinationType;
    map['logType'] = logType;
    return map;
  }

  factory LoggingConfigurationLoggingConfigurationLogDestinationConfig.fromMap(
      Map<String, dynamic> map) {
    return LoggingConfigurationLoggingConfigurationLogDestinationConfig(
      logDestination: (map['logDestination'] as Map).cast<String, String>(),
      logDestinationType: map['logDestinationType'] as String,
      logType: map['logType'] as String,
    );
  }
}
