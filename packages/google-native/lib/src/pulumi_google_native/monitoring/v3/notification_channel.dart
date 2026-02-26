import 'package:pulumi/pulumi.dart';
import 'mutation_record_response.dart';
import 'notification_channel_args.dart';

/// Creates a new notification channel, representing a single notification endpoint such as an email address, SMS number, or PagerDuty service.Design your application to single-thread API calls that modify the state of notification channels in a single project. This includes calls to CreateNotificationChannel, DeleteNotificationChannel and UpdateNotificationChannel.
class NotificationChannel extends CustomResource {
  /// Record of the creation of this channel.
  late final Output<MutationRecordResponse> creationRecord;

  /// An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
  late final Output<String> description;

  /// An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
  late final Output<String> displayName;

  /// Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
  late final Output<bool> enabled;

  /// Configuration fields that define the channel and its behavior. The permissible and required labels are specified in the NotificationChannelDescriptor.labels of the NotificationChannelDescriptor corresponding to the type field.
  late final Output<Map<String, String>> labels;

  /// Records of the modification of this channel.
  late final Output<List<MutationRecordResponse>> mutationRecords;

  /// The full REST resource name for this channel. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] The [CHANNEL_ID] is automatically assigned by the server on creation.
  late final Output<String> name;
  late final Output<String> project;

  /// The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field.
  late final Output<String> type;

  /// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  late final Output<Map<String, String>> userLabels;

  /// Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
  late final Output<String> verificationStatus;

  NotificationChannel(
    String name, {
    NotificationChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:monitoring/v3:NotificationChannel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationRecord =
        registerOutput<MutationRecordResponse>('creationRecord');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.enabled = registerOutput<bool>('enabled');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.mutationRecords =
        registerOutput<List<MutationRecordResponse>>('mutationRecords');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.type = registerOutput<String>('type');
    this.userLabels = registerOutput<Map<String, String>>('userLabels');
    this.verificationStatus = registerOutput<String>('verificationStatus');
  }
}
