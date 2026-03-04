// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventDestinationSnsDestination {
  /// The ARN of the SNS topic
  final pulumi.Input<String> topicArn;

  /// Creates a new [EventDestinationSnsDestination].
  /// [topicArn] The ARN of the SNS topic
  EventDestinationSnsDestination({required this.topicArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topicArn': topicArn};
  }

  factory EventDestinationSnsDestination.fromMap(Map<String, dynamic> map) {
    return EventDestinationSnsDestination(
      topicArn: pulumi.Input.fromValue(map['topicArn'] as String),
    );
  }
}
