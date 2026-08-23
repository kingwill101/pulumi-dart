// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Smsvoicev2EventDestinationSnsDestination {
  /// ARN of the Amazon SNS topic that receives the events.
  final pulumi.Input<String> topicArn;

  /// Creates a new [Smsvoicev2EventDestinationSnsDestination].
  /// [topicArn] ARN of the Amazon SNS topic that receives the events.
  const Smsvoicev2EventDestinationSnsDestination({
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topicArn': topicArn,
    };
  }

  factory Smsvoicev2EventDestinationSnsDestination.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2EventDestinationSnsDestination(
      topicArn: pulumi.Input.fromValue(map['topicArn'] as String),
    );
  }
}
