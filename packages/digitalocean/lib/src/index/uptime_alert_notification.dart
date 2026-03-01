// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uptime_alert_notification_slack.dart';

class UptimeAlertNotification {
  /// List of email addresses to sent notifications to.
  final List<String>? emails;
  final List<UptimeAlertNotificationSlack>? slacks;

  /// Creates a new [UptimeAlertNotification].
  /// [emails] List of email addresses to sent notifications to.
  /// [slacks] Optional.
  UptimeAlertNotification({
    this.emails,
    this.slacks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slacks': ?slacks == null ? null : pulumi.Input.encodeList<UptimeAlertNotificationSlack, Map<String, dynamic>>(slacks!, (value) => value.toMap()),
    };
  }

  factory UptimeAlertNotification.fromMap(Map<String, dynamic> map) {
    return UptimeAlertNotification(
      emails: map['emails'] == null ? null : (map['emails'] as List).cast<String>(),
      slacks: map['slacks'] == null ? null : pulumi.Input.decodeList<UptimeAlertNotificationSlack>(map['slacks'], (value) => UptimeAlertNotificationSlack.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

