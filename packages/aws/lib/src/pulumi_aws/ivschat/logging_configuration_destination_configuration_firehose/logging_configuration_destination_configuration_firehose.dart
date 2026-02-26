// ignore_for_file: unused_element, unnecessary_cast

class LoggingConfigurationDestinationConfigurationFirehose {
  /// Name of the Amazon Kinesis Firehose delivery stream where chat activity will be logged.
  final String deliveryStreamName;

  LoggingConfigurationDestinationConfigurationFirehose({
    required this.deliveryStreamName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deliveryStreamName'] = deliveryStreamName;
    return map;
  }

  factory LoggingConfigurationDestinationConfigurationFirehose.fromMap(
      Map<String, dynamic> map) {
    return LoggingConfigurationDestinationConfigurationFirehose(
      deliveryStreamName: map['deliveryStreamName'] as String,
    );
  }
}
