// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNotificationConfig.
class GetNotificationConfigArgs {
  final Input<String> notificationConfigId;
  final Input<String>? project;

  GetNotificationConfigArgs({
    required this.notificationConfigId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['notificationConfigId'] = notificationConfigId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationConfigArgs(
      notificationConfigId: Input.asInput<String>(map['notificationConfigId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
