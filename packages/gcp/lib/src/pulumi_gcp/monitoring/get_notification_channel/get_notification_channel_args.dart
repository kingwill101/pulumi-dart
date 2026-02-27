// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNotificationChannel.
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

  GetNotificationChannelArgs({
    this.displayName,
    this.labels,
    this.project,
    this.type,
    this.userLabels,
  });

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
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
      userLabels:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['userLabels']),
    );
  }
}
