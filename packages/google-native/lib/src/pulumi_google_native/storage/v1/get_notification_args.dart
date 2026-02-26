// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNotification.
class GetNotificationArgs {
  final Input<String> bucket;
  final Input<String> notification;
  final Input<String>? userProject;

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
      bucket: Input.asInput<String>(map['bucket']),
      notification: Input.asInput<String>(map['notification']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
