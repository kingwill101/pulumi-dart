// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../notification_channel_sensitive_labels/notification_channel_sensitive_labels.dart';

/// The set of arguments for NotificationChannel.
class NotificationChannelArgs {
  /// An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
  final Input<String>? description;

  /// An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
  final Input<String>? displayName;

  /// Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
  final Input<bool>? enabled;

  /// If true, the notification channel will be deleted regardless
  /// of its use in alert policies (the policies will be updated
  /// to remove the channel). If false, channels that are still
  /// referenced by an existing alerting policy will fail to be
  /// deleted in a delete operation.
  final Input<bool>? forceDelete;

  /// Configuration fields that define the channel and its behavior. The
  /// permissible and required labels are specified in the
  /// NotificationChannelDescriptor corresponding to the type field.
  /// Labels with sensitive data are obfuscated by the API and therefore the provider cannot
  /// determine if there are upstream changes to these fields. They can also be configured via
  /// the sensitive_labels block, but cannot be configured in both places.
  final Input<Map<String, String>>? labels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Different notification type behaviors are configured primarily using the the `labels` field on this
  /// resource. This block contains the labels which contain secrets or passwords so that they can be marked
  /// sensitive and hidden from plan output. The name of the field, eg: password, will be the key
  /// in the `labels` map in the api request.
  /// Credentials may not be specified in both locations and will cause an error. Changing from one location
  /// to a different credential configuration in the config will require an apply to update state.
  /// Structure is documented below.
  final Input<NotificationChannelSensitiveLabels>? sensitiveLabels;

  /// The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as "email", "slack", etc...
  final Input<String> type;

  /// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  final Input<Map<String, String>>? userLabels;

  NotificationChannelArgs({
    this.description,
    this.displayName,
    this.enabled,
    this.forceDelete,
    this.labels,
    this.project,
    this.sensitiveLabels,
    required this.type,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final forceDeleteValue = forceDelete;
    if (forceDeleteValue != null) {
      map['forceDelete'] = forceDeleteValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sensitiveLabelsValue = sensitiveLabels;
    if (sensitiveLabelsValue != null) {
      map['sensitiveLabels'] = Input.mapOptionalInputValue<
          NotificationChannelSensitiveLabels,
          Map<String, dynamic>>(sensitiveLabelsValue, (value) => value.toMap());
    }
    map['type'] = type;
    final userLabelsValue = userLabels;
    if (userLabelsValue != null) {
      map['userLabels'] = userLabelsValue;
    }
    return map;
  }

  factory NotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return NotificationChannelArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      forceDelete: Input.asOptionalInput<bool>(map['forceDelete']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: Input.asOptionalInput<String>(map['project']),
      sensitiveLabels:
          Input.asOptionalInput<NotificationChannelSensitiveLabels>(
              map['sensitiveLabels']),
      type: Input.asInput<String>(map['type']),
      userLabels: Input.asOptionalInput<Map<String, String>>(map['userLabels']),
    );
  }
}
