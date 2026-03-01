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
  NotificationState({
    pulumi.Output<List<String>>? groupNames,
    pulumi.Output<List<NotificationType>>? notifications,
    pulumi.Output<String>? region,
    pulumi.Output<String>? topicArn,
  }) :
      groupNames = pulumi.Input.asOptionalInput<List<String>>(groupNames),
      notifications = pulumi.Input.asOptionalInput<List<NotificationType>>(notifications),
      region = pulumi.Input.asOptionalInput<String>(region),
      topicArn = pulumi.Input.asOptionalInput<String>(topicArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupNames': ?groupNames,
      'notifications': ?pulumi.Input.mapOptionalInputValue<List<NotificationType>, List<String>>(notifications, (value) => pulumi.Input.encodeList<NotificationType, String>(value, (value) => value.value)),
      'region': ?region,
      'topicArn': ?topicArn,
    };
  }

  factory NotificationState.fromMap(Map<String, dynamic> map) {
    return NotificationState(
      groupNames: map['groupNames'] == null ? null : pulumi.Output.create<List<String>>((map['groupNames'] as List).cast<String>()),
      notifications: map['notifications'] == null ? null : pulumi.Output.create<List<NotificationType>>(pulumi.Input.decodeList<NotificationType>(map['notifications'], (value) => NotificationType.fromValue(value as String))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      topicArn: map['topicArn'] == null ? null : pulumi.Output.create<String>(map['topicArn'] as String),
    );
  }
}

