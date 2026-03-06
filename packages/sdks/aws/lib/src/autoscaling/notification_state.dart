// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_type.dart';

/// Input properties used for looking up and filtering Notification resources.
class NotificationState {
  /// List of AutoScaling Group Names
  final pulumi.Input<List<String>>? groupNames;
  /// List of Notification Types that trigger
  /// notifications. Acceptable values are documented [in the AWS documentation here](https://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_NotificationConfiguration.html)
  final pulumi.Input<List<NotificationType>>? notifications;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Topic ARN for notifications to be sent through
  final pulumi.Input<String>? topicArn;

  /// Creates a new [NotificationState].
  /// [groupNames] List of AutoScaling Group Names
  /// [notifications] List of Notification Types that trigger
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [topicArn] Topic ARN for notifications to be sent through
  const NotificationState({
    this.groupNames,
    this.notifications,
    this.region,
    this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupNames': ?groupNames,
      'notifications': ?pulumi.Input.mapOptionalInputValue<List<NotificationType>, List<String>>(notifications, (value) => pulumi.Input.encodeList<NotificationType, String>(value, (value) => value.wireValue)),
      'region': ?region,
      'topicArn': ?topicArn,
    };
  }

  factory NotificationState.fromMap(Map<String, dynamic> map) {
    return NotificationState(
      groupNames: (() { final guardedValue = map['groupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationType>(guardedValue, (value) => NotificationType.fromValue(value as String))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicArn: (() { final guardedValue = map['topicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

