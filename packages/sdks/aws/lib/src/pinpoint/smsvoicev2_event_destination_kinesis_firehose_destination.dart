// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Smsvoicev2EventDestinationKinesisFirehoseDestination {
  /// ARN of the Amazon Data Firehose delivery stream that receives the events.
  final pulumi.Input<String> deliveryStreamArn;
  /// ARN of the IAM role that End User Messaging SMS assumes to write to the delivery stream.
  final pulumi.Input<String> iamRoleArn;

  /// Creates a new [Smsvoicev2EventDestinationKinesisFirehoseDestination].
  /// [deliveryStreamArn] ARN of the Amazon Data Firehose delivery stream that receives the events.
  /// [iamRoleArn] ARN of the IAM role that End User Messaging SMS assumes to write to the delivery stream.
  const Smsvoicev2EventDestinationKinesisFirehoseDestination({
    required this.deliveryStreamArn,
    required this.iamRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryStreamArn': deliveryStreamArn,
      'iamRoleArn': iamRoleArn,
    };
  }

  factory Smsvoicev2EventDestinationKinesisFirehoseDestination.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2EventDestinationKinesisFirehoseDestination(
      deliveryStreamArn: pulumi.Input.fromValue(map['deliveryStreamArn'] as String),
      iamRoleArn: pulumi.Input.fromValue(map['iamRoleArn'] as String),
    );
  }
}
