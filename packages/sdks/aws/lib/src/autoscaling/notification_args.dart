// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_type.dart';

/// {@template pulumi_autoscaling_notification_notification_args_doc}
/// The set of arguments for Notification.
/// {@endtemplate}
/// {@macro pulumi_autoscaling_notification_notification_args_doc}
class NotificationArgs {
  /// List of AutoScaling Group Names
  final pulumi.Input<List<String>> groupNames;
  /// List of Notification Types that trigger
  /// notifications. Acceptable values are documented [in the AWS documentation here](https://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_NotificationConfiguration.html)
  final pulumi.Input<List<NotificationType>> notifications;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Topic ARN for notifications to be sent through
  final pulumi.Input<String> topicArn;

  /// Creates a new [NotificationArgs].
  /// [groupNames] List of AutoScaling Group Names
  /// [notifications] List of Notification Types that trigger
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [topicArn] Topic ARN for notifications to be sent through
  NotificationArgs({
    required this.groupNames,
    required this.notifications,
    this.region,
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupNames': groupNames,
      'notifications': pulumi.Input.mapInputValue<List<NotificationType>, List<String>>(notifications, (value) => pulumi.Input.encodeList<NotificationType, String>(value, (value) => value.wireValue)),
      'region': ?region,
      'topicArn': topicArn,
    };
  }

  factory NotificationArgs.fromMap(Map<String, dynamic> map) {
    return NotificationArgs(
      groupNames: pulumi.Input.fromValue((map['groupNames'] as List).cast<String>()),
      notifications: pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationType>(map['notifications']!, (value) => NotificationType.fromValue(value as String))),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicArn: pulumi.Input.fromValue(map['topicArn'] as String),
    );
  }
}

