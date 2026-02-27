// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNotification.
class GetNotificationArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> notification;
  final pulumi.Input<String>? userProject;

  GetNotificationArgs({
    required this.bucket,
    required this.notification,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['notification'] = notification;
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    return map;
  }

  factory GetNotificationArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      notification: pulumi.Input.asInput<String>(map['notification']),
      userProject: pulumi.Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
