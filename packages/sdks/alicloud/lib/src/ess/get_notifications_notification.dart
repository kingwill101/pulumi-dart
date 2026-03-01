// ignore_for_file: unused_element, unnecessary_cast


class GetNotificationsNotification {
  /// ID of the notification.
  final String id;
  /// The Alibaba Cloud Resource Name (ARN) for the notification object.
  final String notificationArn;
  /// The notification types of Auto Scaling events and resource changes.
  final List<String> notificationTypes;
  /// Scaling group id the notifications belong to.
  final String scalingGroupId;

  /// Creates a new [GetNotificationsNotification].
  /// [id] ID of the notification.
  /// [notificationArn] The Alibaba Cloud Resource Name (ARN) for the notification object.
  /// [notificationTypes] The notification types of Auto Scaling events and resource changes.
  /// [scalingGroupId] Scaling group id the notifications belong to.
  GetNotificationsNotification({
    required this.id,
    required this.notificationArn,
    required this.notificationTypes,
    required this.scalingGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'notificationArn': notificationArn,
      'notificationTypes': notificationTypes,
      'scalingGroupId': scalingGroupId,
    };
  }

  factory GetNotificationsNotification.fromMap(Map<String, dynamic> map) {
    return GetNotificationsNotification(
      id: map['id'] as String,
      notificationArn: map['notificationArn'] as String,
      notificationTypes: (map['notificationTypes'] as List).cast<String>(),
      scalingGroupId: map['scalingGroupId'] as String,
    );
  }
}

