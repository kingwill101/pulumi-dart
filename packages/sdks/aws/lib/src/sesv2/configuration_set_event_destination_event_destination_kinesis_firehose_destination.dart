// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination {
  /// The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose stream that the Amazon SES API v2 sends email events to.
  final pulumi.Input<String> deliveryStreamArn;
  /// The Amazon Resource Name (ARN) of the IAM role that the Amazon SES API v2 uses to send email events to the Amazon Kinesis Data Firehose stream.
  final pulumi.Input<String> iamRoleArn;

  /// Creates a new [ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination].
  /// [deliveryStreamArn] The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose stream that the Amazon SES API v2 sends email events to.
  /// [iamRoleArn] The Amazon Resource Name (ARN) of the IAM role that the Amazon SES API v2 uses to send email events to the Amazon Kinesis Data Firehose stream.
  ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination({
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
      deliveryStreamArn: (map['deliveryStreamArn'] as String).input(),
      iamRoleArn: (map['iamRoleArn'] as String).input(),
    );
  }
}

