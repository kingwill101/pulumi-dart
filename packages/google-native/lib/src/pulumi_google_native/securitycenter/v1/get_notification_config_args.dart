// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNotificationConfig.
class GetNotificationConfigArgs {
  final pulumi.Input<String> notificationConfigId;
  final pulumi.Input<String>? project;

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
      notificationConfigId:
          pulumi.Input.asInput<String>(map['notificationConfigId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
