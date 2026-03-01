// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mutation_record.dart';
import 'notification_channel_verification_status.dart';

/// {@template pulumi_monitoring_v3_notification_channel_args_doc}
/// The set of arguments for NotificationChannel.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_notification_channel_args_doc}
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

  /// Creates a new [NotificationChannelArgs].
  /// [creationRecord] Record of the creation of this channel.
  /// [description] An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
  /// [displayName] An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
  /// [enabled] Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
  /// [labels] Configuration fields that define the channel and its behavior. The permissible and required labels are specified in the NotificationChannelDescriptor.labels of the NotificationChannelDescriptor corresponding to the type field.
  /// [mutationRecords] Records of the modification of this channel.
  /// [name] The full REST resource name for this channel. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] The [CHANNEL_ID] is automatically assigned by the server on creation.
  /// [project] Optional.
  /// [type] The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field.
  /// [userLabels] User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  /// [verificationStatus] Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
  NotificationChannelArgs({
    MutationRecord? creationRecord,
    String? description,
    String? displayName,
    bool? enabled,
    Map<String, String>? labels,
    List<MutationRecord>? mutationRecords,
    String? name,
    String? project,
    String? type,
    Map<String, String>? userLabels,
    NotificationChannelVerificationStatus? verificationStatus,
  }) : creationRecord = pulumi.Input.asOptionalInput<MutationRecord>(
         creationRecord,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       enabled = pulumi.Input.asOptionalInput<bool>(enabled),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       mutationRecords = pulumi.Input.asOptionalInput<List<MutationRecord>>(
         mutationRecords,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       type = pulumi.Input.asOptionalInput<String>(type),
       userLabels = pulumi.Input.asOptionalInput<Map<String, String>>(
         userLabels,
       ),
       verificationStatus =
           pulumi.Input.asOptionalInput<NotificationChannelVerificationStatus>(
             verificationStatus,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationRecord':
          ?pulumi.Input.mapOptionalInputValue<
            MutationRecord,
            Map<String, dynamic>
          >(creationRecord, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'labels': ?labels,
      'mutationRecords':
          ?pulumi.Input.mapOptionalInputValue<
            List<MutationRecord>,
            List<Map<String, dynamic>>
          >(
            mutationRecords,
            (value) =>
                pulumi.Input.encodeList<MutationRecord, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'name': ?name,
      'project': ?project,
      'type': ?type,
      'userLabels': ?userLabels,
      'verificationStatus':
          ?pulumi.Input.mapOptionalInputValue<
            NotificationChannelVerificationStatus,
            String
          >(verificationStatus, (value) => value.value),
    };
  }

  factory NotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return NotificationChannelArgs(
      creationRecord: map['creationRecord'] == null
          ? null
          : MutationRecord.fromMap(
              (map['creationRecord'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      mutationRecords: map['mutationRecords'] == null
          ? null
          : pulumi.Input.decodeList<MutationRecord>(
              map['mutationRecords'],
              (value) => MutationRecord.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userLabels: map['userLabels'] == null
          ? null
          : (map['userLabels'] as Map).cast<String, String>(),
      verificationStatus: map['verificationStatus'] == null
          ? null
          : NotificationChannelVerificationStatus.fromValue(
              map['verificationStatus'] as String,
            ),
    );
  }
}
