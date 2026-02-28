// ignore_for_file: unused_element, unnecessary_cast


class LoggingConfigurationDestinationConfigurationFirehose {
  /// Name of the Amazon Kinesis Firehose delivery stream where chat activity will be logged.
  final String deliveryStreamName;

  /// Creates a new [LoggingConfigurationDestinationConfigurationFirehose].
  /// [deliveryStreamName] Name of the Amazon Kinesis Firehose delivery stream where chat activity will be logged.
  LoggingConfigurationDestinationConfigurationFirehose({
    required this.deliveryStreamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryStreamName': deliveryStreamName,
    };
  }

  factory LoggingConfigurationDestinationConfigurationFirehose.fromMap(Map<String, dynamic> map) {
    return LoggingConfigurationDestinationConfigurationFirehose(
      deliveryStreamName: map['deliveryStreamName'] as String,
    );
  }
}

