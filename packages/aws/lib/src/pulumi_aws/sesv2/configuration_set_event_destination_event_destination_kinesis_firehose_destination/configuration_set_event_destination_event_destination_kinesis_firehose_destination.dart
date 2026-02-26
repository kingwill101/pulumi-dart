// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination {
  /// The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose stream that the Amazon SES API v2 sends email events to.
  final String deliveryStreamArn;

  /// The Amazon Resource Name (ARN) of the IAM role that the Amazon SES API v2 uses to send email events to the Amazon Kinesis Data Firehose stream.
  final String iamRoleArn;

  ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination({
    required this.deliveryStreamArn,
    required this.iamRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deliveryStreamArn'] = deliveryStreamArn;
    map['iamRoleArn'] = iamRoleArn;
    return map;
  }

  factory ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination(
      deliveryStreamArn: map['deliveryStreamArn'] as String,
      iamRoleArn: map['iamRoleArn'] as String,
    );
  }
}
