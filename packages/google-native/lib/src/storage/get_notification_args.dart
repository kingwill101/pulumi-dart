// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_notification_args_doc}
/// Arguments for getNotification.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_notification_args_doc}
class GetNotificationArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> notification;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetNotificationArgs].
  /// [bucket] Required.
  /// [notification] Required.
  /// [userProject] Optional.
  GetNotificationArgs({
    required String bucket,
    required String notification,
    String? userProject,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        notification = pulumi.Input.asInput<String>(notification),
        userProject = pulumi.Input.asOptionalInput<String>(userProject);

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
      bucket: map['bucket'] as String,
      notification: map['notification'] as String,
      userProject:
          map['userProject'] == null ? null : map['userProject'] as String,
    );
  }
}
