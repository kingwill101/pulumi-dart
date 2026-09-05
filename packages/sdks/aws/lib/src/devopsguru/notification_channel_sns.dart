// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationChannelSns {
  /// ARN of an Amazon Simple Notification Service topic.
  final pulumi.Input<String> topicArn;

  /// Creates a new [NotificationChannelSns].
  /// [topicArn] ARN of an Amazon Simple Notification Service topic.
  const NotificationChannelSns({
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topicArn': topicArn,
    };
  }

  factory NotificationChannelSns.fromMap(Map<String, dynamic> map) {
    return NotificationChannelSns(
      topicArn: pulumi.Input.fromValue(map['topicArn'] as String),
    );
  }
}
