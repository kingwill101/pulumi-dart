// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_notification_channel_sensitive_label/get_notification_channel_sensitive_label.dart';

/// Result data returned by getNotificationChannel.
class GetNotificationChannelResult {
  /// An optional human-readable description of this notification channel.
  final String description;
  final String? displayName;

  /// Whether notifications are forwarded to the described channel.
  final bool enabled;
  final bool forceDelete;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Configuration fields that define the channel and its behavior.
  final Map<String, String>? labels;

  /// The full REST resource name for this channel. The syntax is:
  /// `projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]`.
  final String name;
  final String? project;
  final List<GetNotificationChannelSensitiveLabel> sensitiveLabels;
  final String? type;

  /// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field.
  final Map<String, String>? userLabels;

  /// Indicates whether this channel has been verified or not.
  final String verificationStatus;

  GetNotificationChannelResult({
    required this.description,
    this.displayName,
    required this.enabled,
    required this.forceDelete,
    required this.id,
    this.labels,
    required this.name,
    this.project,
    required this.sensitiveLabels,
    this.type,
    this.userLabels,
    required this.verificationStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['enabled'] = enabled;
    map['forceDelete'] = forceDelete;
    map['id'] = id;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sensitiveLabels'] = Input.encodeList<
        GetNotificationChannelSensitiveLabel,
        Map<String, dynamic>>(sensitiveLabels, (value) => value.toMap());
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final userLabelsValue = userLabels;
    if (userLabelsValue != null) {
      map['userLabels'] = userLabelsValue;
    }
    map['verificationStatus'] = verificationStatus;
    return map;
  }

  factory GetNotificationChannelResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelResult(
      description: map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      enabled: map['enabled'] as bool,
      forceDelete: map['forceDelete'] as bool,
      id: map['id'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sensitiveLabels: Input.decodeList<GetNotificationChannelSensitiveLabel>(
          map['sensitiveLabels'],
          (value) => GetNotificationChannelSensitiveLabel.fromMap(
              (value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
      userLabels: map['userLabels'] == null
          ? null
          : (map['userLabels'] as Map).cast<String, String>(),
      verificationStatus: map['verificationStatus'] as String,
    );
  }
}
