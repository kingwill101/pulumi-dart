// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_v3_get_notification_channel_args_doc}
/// Arguments for getNotificationChannel.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_get_notification_channel_args_doc}
class GetNotificationChannelArgs {
  final pulumi.Input<String> notificationChannelId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNotificationChannelArgs].
  /// [notificationChannelId] Required.
  /// [project] Optional.
  GetNotificationChannelArgs({
    required String notificationChannelId,
    String? project,
  })  : notificationChannelId =
            pulumi.Input.asInput<String>(notificationChannelId),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      notificationChannelId: map['notificationChannelId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
