// ignore_for_file: unused_element, unnecessary_cast

class NotificationChannelSns {
  /// Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic.
  final String topicArn;

  NotificationChannelSns({
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topicArn'] = topicArn;
    return map;
  }

  factory NotificationChannelSns.fromMap(Map<String, dynamic> map) {
    return NotificationChannelSns(
      topicArn: map['topicArn'] as String,
    );
  }
}
