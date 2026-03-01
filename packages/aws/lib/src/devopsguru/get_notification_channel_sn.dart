// ignore_for_file: unused_element, unnecessary_cast


class GetNotificationChannelSn {
  /// Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic.
  final String topicArn;

  /// Creates a new [GetNotificationChannelSn].
  /// [topicArn] Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic.
  GetNotificationChannelSn({
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topicArn': topicArn,
    };
  }

  factory GetNotificationChannelSn.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelSn(
      topicArn: map['topicArn'] as String,
    );
  }
}

