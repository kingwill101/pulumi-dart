// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationsNotification {
  /// ID of the notification.
  final pulumi.Input<String> id;
  /// The Alibaba Cloud Resource Name (ARN) for the notification object.
  final pulumi.Input<String> notificationArn;
  /// The notification types of Auto Scaling events and resource changes.
  final pulumi.Input<List<String>> notificationTypes;
  /// Scaling group id the notifications belong to.
  final pulumi.Input<String> scalingGroupId;

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
      id: pulumi.Input.fromValue(map['id'] as String),
      notificationArn: pulumi.Input.fromValue(map['notificationArn'] as String),
      notificationTypes: pulumi.Input.fromValue((map['notificationTypes'] as List).cast<String>()),
      scalingGroupId: pulumi.Input.fromValue(map['scalingGroupId'] as String),
    );
  }
}

