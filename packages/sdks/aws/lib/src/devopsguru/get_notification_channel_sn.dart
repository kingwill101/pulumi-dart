// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationChannelSn {
  /// Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic.
  final pulumi.Input<String> topicArn;

  /// Creates a new [GetNotificationChannelSn].
  /// [topicArn] Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic.
  const GetNotificationChannelSn({
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topicArn': topicArn,
    };
  }

  factory GetNotificationChannelSn.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelSn(
      topicArn: pulumi.Input.fromValue(map['topicArn'] as String),
    );
  }
}
