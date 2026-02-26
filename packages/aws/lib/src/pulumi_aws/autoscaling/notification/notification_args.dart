// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../notification_type/notification_type.dart';

/// The set of arguments for Notification.
class NotificationArgs {
  /// List of AutoScaling Group Names
  final Input<List<String>> groupNames;

  /// List of Notification Types that trigger
  /// notifications. Acceptable values are documented [in the AWS documentation here](https://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_NotificationConfiguration.html)
  final Input<List<NotificationType>> notifications;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Topic ARN for notifications to be sent through
  final Input<String> topicArn;

  NotificationArgs({
    required this.groupNames,
    required this.notifications,
    this.region,
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupNames'] = groupNames;
    map['notifications'] =
        Input.mapInputValue<List<NotificationType>, List<String>>(
            notifications,
            (value) => Input.encodeList<NotificationType, String>(
                value, (value) => value.value));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['topicArn'] = topicArn;
    return map;
  }

  factory NotificationArgs.fromMap(Map<String, dynamic> map) {
    return NotificationArgs(
      groupNames: Input.asInput<List<String>>(map['groupNames']),
      notifications:
          Input.asInput<List<NotificationType>>(map['notifications']),
      region: Input.asOptionalInput<String>(map['region']),
      topicArn: Input.asInput<String>(map['topicArn']),
    );
  }
}
