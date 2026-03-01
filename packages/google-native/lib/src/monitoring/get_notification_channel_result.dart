// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mutation_record_response.dart';

/// Result data returned by getNotificationChannel.
class GetNotificationChannelResult {
  /// Record of the creation of this channel.
  final MutationRecordResponse creationRecord;

  /// An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
  final String description;

  /// An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
  final String displayName;

  /// Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
  final bool enabled;

  /// Configuration fields that define the channel and its behavior. The permissible and required labels are specified in the NotificationChannelDescriptor.labels of the NotificationChannelDescriptor corresponding to the type field.
  final Map<String, String> labels;

  /// Records of the modification of this channel.
  final List<MutationRecordResponse> mutationRecords;

  /// The full REST resource name for this channel. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] The [CHANNEL_ID] is automatically assigned by the server on creation.
  final String name;

  /// The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field.
  final String type;

  /// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  final Map<String, String> userLabels;

  /// Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
  final String verificationStatus;

  /// Creates a new [GetNotificationChannelResult].
  /// [creationRecord] Record of the creation of this channel.
  /// [description] An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
  /// [displayName] An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
  /// [enabled] Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
  /// [labels] Configuration fields that define the channel and its behavior. The permissible and required labels are specified in the NotificationChannelDescriptor.labels of the NotificationChannelDescriptor corresponding to the type field.
  /// [mutationRecords] Records of the modification of this channel.
  /// [name] The full REST resource name for this channel. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] The [CHANNEL_ID] is automatically assigned by the server on creation.
  /// [type] The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field.
  /// [userLabels] User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  /// [verificationStatus] Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
  GetNotificationChannelResult({
    required this.creationRecord,
    required this.description,
    required this.displayName,
    required this.enabled,
    required this.labels,
    required this.mutationRecords,
    required this.name,
    required this.type,
    required this.userLabels,
    required this.verificationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationRecord': creationRecord.toMap(),
      'description': description,
      'displayName': displayName,
      'enabled': enabled,
      'labels': labels,
      'mutationRecords':
          pulumi.Input.encodeList<MutationRecordResponse, Map<String, dynamic>>(
            mutationRecords,
            (value) => value.toMap(),
          ),
      'name': name,
      'type': type,
      'userLabels': userLabels,
      'verificationStatus': verificationStatus,
    };
  }

  factory GetNotificationChannelResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelResult(
      creationRecord: MutationRecordResponse.fromMap(
        (map['creationRecord'] as Map).cast<String, dynamic>(),
      ),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      enabled: map['enabled'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      mutationRecords: pulumi.Input.decodeList<MutationRecordResponse>(
        map['mutationRecords'],
        (value) => MutationRecordResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      name: map['name'] as String,
      type: map['type'] as String,
      userLabels: (map['userLabels'] as Map).cast<String, String>(),
      verificationStatus: map['verificationStatus'] as String,
    );
  }
}
