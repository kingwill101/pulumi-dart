// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mutation_record.dart';
import 'notification_channel_verification_status.dart';

/// The set of arguments for NotificationChannel.
class NotificationChannelArgs {
  /// Record of the creation of this channel.
  final pulumi.Input<MutationRecord>? creationRecord;

  /// An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
  final pulumi.Input<String>? description;

  /// An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
  final pulumi.Input<String>? displayName;

  /// Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
  final pulumi.Input<bool>? enabled;

  /// Configuration fields that define the channel and its behavior. The permissible and required labels are specified in the NotificationChannelDescriptor.labels of the NotificationChannelDescriptor corresponding to the type field.
  final pulumi.Input<Map<String, String>>? labels;

  /// Records of the modification of this channel.
  final pulumi.Input<List<MutationRecord>>? mutationRecords;

  /// The full REST resource name for this channel. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] The [CHANNEL_ID] is automatically assigned by the server on creation.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field.
  final pulumi.Input<String>? type;

  /// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  final pulumi.Input<Map<String, String>>? userLabels;

  /// Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
  final pulumi.Input<NotificationChannelVerificationStatus>? verificationStatus;

  NotificationChannelArgs({
    this.creationRecord,
    this.description,
    this.displayName,
    this.enabled,
    this.labels,
    this.mutationRecords,
    this.name,
    this.project,
    this.type,
    this.userLabels,
    this.verificationStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final creationRecordValue = creationRecord;
    if (creationRecordValue != null) {
      map['creationRecord'] = pulumi.Input.mapOptionalInputValue<MutationRecord,
          Map<String, dynamic>>(creationRecordValue, (value) => value.toMap());
    }
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
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final mutationRecordsValue = mutationRecords;
    if (mutationRecordsValue != null) {
      map['mutationRecords'] = pulumi.Input.mapOptionalInputValue<
              List<MutationRecord>, List<Map<String, dynamic>>>(
          mutationRecordsValue,
          (value) =>
              pulumi.Input.encodeList<MutationRecord, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
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
    final verificationStatusValue = verificationStatus;
    if (verificationStatusValue != null) {
      map['verificationStatus'] = pulumi.Input.mapOptionalInputValue<
          NotificationChannelVerificationStatus,
          String>(verificationStatusValue, (value) => value.value);
    }
    return map;
  }

  factory NotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return NotificationChannelArgs(
      creationRecord:
          pulumi.Input.asOptionalInput<MutationRecord>(map['creationRecord']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      mutationRecords: pulumi.Input.asOptionalInput<List<MutationRecord>>(
          map['mutationRecords']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
      userLabels:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['userLabels']),
      verificationStatus:
          pulumi.Input.asOptionalInput<NotificationChannelVerificationStatus>(
              map['verificationStatus']),
    );
  }
}
