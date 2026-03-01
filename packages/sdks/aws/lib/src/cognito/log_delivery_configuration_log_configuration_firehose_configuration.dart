// ignore_for_file: unused_element, unnecessary_cast


class LogDeliveryConfigurationLogConfigurationFirehoseConfiguration {
  /// The ARN of the Kinesis Data Firehose delivery stream to which the logs should be delivered.
  final String? streamArn;

  /// Creates a new [LogDeliveryConfigurationLogConfigurationFirehoseConfiguration].
  /// [streamArn] The ARN of the Kinesis Data Firehose delivery stream to which the logs should be delivered.
  LogDeliveryConfigurationLogConfigurationFirehoseConfiguration({
    this.streamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'streamArn': ?streamArn,
    };
  }

  factory LogDeliveryConfigurationLogConfigurationFirehoseConfiguration.fromMap(Map<String, dynamic> map) {
    return LogDeliveryConfigurationLogConfigurationFirehoseConfiguration(
      streamArn: map['streamArn'] == null ? null : map['streamArn'] as String,
    );
  }
}

