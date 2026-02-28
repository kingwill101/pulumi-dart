// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_get_notification_channel_get_notification_channel_args_doc}
/// Arguments for getNotificationChannel.
/// {@endtemplate}
/// {@macro pulumi_monitoring_get_notification_channel_get_notification_channel_args_doc}
class GetNotificationChannelArgs {
  /// The display name for this notification channel.
  final pulumi.Input<String>? displayName;

  /// Labels (corresponding to the
  /// NotificationChannelDescriptor schema) to filter the notification channels by.
  final pulumi.Input<Map<String, String>>? labels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The type of the notification channel.
  ///
  /// - - -
  ///
  /// Other optional fields include:
  final pulumi.Input<String>? type;

  /// User-provided key-value labels to filter by.
  final pulumi.Input<Map<String, String>>? userLabels;

  /// Creates a new [GetNotificationChannelArgs].
  /// [displayName] The display name for this notification channel.
  /// [labels] Labels (corresponding to the
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of the notification channel.
  /// [userLabels] User-provided key-value labels to filter by.
  GetNotificationChannelArgs({
    String? displayName,
    Map<String, String>? labels,
    String? project,
    String? type,
    Map<String, String>? userLabels,
  })  : displayName = pulumi.Input.asOptionalInput<String>(displayName),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        project = pulumi.Input.asOptionalInput<String>(project),
        type = pulumi.Input.asOptionalInput<String>(type),
        userLabels =
            pulumi.Input.asOptionalInput<Map<String, String>>(userLabels);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final userLabelsValue = userLabels;
    if (userLabelsValue != null) {
      map['userLabels'] = userLabelsValue;
    }
    return map;
  }

  factory GetNotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelArgs(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userLabels: map['userLabels'] == null
          ? null
          : (map['userLabels'] as Map).cast<String, String>(),
    );
  }
}
