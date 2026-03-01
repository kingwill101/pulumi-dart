// ignore_for_file: unused_element, unnecessary_cast

class NotificationChannelSns {
  /// Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic.
  final String topicArn;

  /// Creates a new [NotificationChannelSns].
  /// [topicArn] Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic.
  NotificationChannelSns({required this.topicArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topicArn': topicArn};
  }

  factory NotificationChannelSns.fromMap(Map<String, dynamic> map) {
    return NotificationChannelSns(topicArn: map['topicArn'] as String);
  }
}
