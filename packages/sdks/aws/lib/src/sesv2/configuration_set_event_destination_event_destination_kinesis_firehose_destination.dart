// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination {
  /// ARN of the Amazon Kinesis Data Firehose stream that the Amazon SES API v2 sends email events to.
  final pulumi.Input<String> deliveryStreamArn;
  /// ARN of the IAM role that the Amazon SES API v2 uses to send email events to the Amazon Kinesis Data Firehose stream.
  final pulumi.Input<String> iamRoleArn;

  /// Creates a new [ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination].
  /// [deliveryStreamArn] ARN of the Amazon Kinesis Data Firehose stream that the Amazon SES API v2 sends email events to.
  /// [iamRoleArn] ARN of the IAM role that the Amazon SES API v2 uses to send email events to the Amazon Kinesis Data Firehose stream.
  const ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination({
    required this.deliveryStreamArn,
    required this.iamRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryStreamArn': deliveryStreamArn,
      'iamRoleArn': iamRoleArn,
    };
  }

  factory ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination(
      deliveryStreamArn: pulumi.Input.fromValue(map['deliveryStreamArn'] as String),
      iamRoleArn: pulumi.Input.fromValue(map['iamRoleArn'] as String),
    );
  }
}
