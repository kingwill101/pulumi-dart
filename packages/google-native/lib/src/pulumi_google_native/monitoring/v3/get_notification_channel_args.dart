// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNotificationChannel.
class GetNotificationChannelArgs {
  final Input<String> notificationChannelId;
  final Input<String>? project;

  GetNotificationChannelArgs({
    required this.notificationChannelId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['notificationChannelId'] = notificationChannelId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelArgs(
      notificationChannelId:
          Input.asInput<String>(map['notificationChannelId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
