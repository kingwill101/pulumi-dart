import 'package:pulumi/pulumi.dart' as pulumi;
import '../notification_channel_sensitive_labels/notification_channel_sensitive_labels.dart';
import 'notification_channel_args.dart';

/// A NotificationChannel is a medium through which an alert is delivered
/// when a policy violation is detected. Examples of channels include email, SMS,
/// and third-party messaging applications. Fields containing sensitive information
/// like authentication tokens or contact info are only partially populated on retrieval.
///
/// Notification Channels are designed to be flexible and are made up of a supported `type`
/// and labels to configure that channel. Each `type` has specific labels that need to be
/// present for that channel to be correctly configured. The labels that are required to be
/// present for one channel `type` are often different than those required for another.
/// Due to these loose constraints it's often best to set up a channel through the UI
/// and import it to the provider when setting up a brand new channel type to determine which
/// labels are required.
///
/// A list of supported channels per project the `list` endpoint can be
/// accessed programmatically or through the api explorer at  https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list .
/// This provides the channel type and all of the required labels that must be passed.
///
///
/// To get more information about NotificationChannel, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannels)
/// * How-to Guides
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
/// * [Notification Options](https://cloud.google.com/monitoring/support/notification-options)
///
///
///
/// ## Example Usage
///
/// ### Notification Channel Basic
///
///
///
/// ### Notification Channel Sensitive
///
///
///
///
/// ## Import
///
/// NotificationChannel can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NotificationChannel can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/notificationChannel:NotificationChannel default {{name}}
/// ```
class NotificationChannel extends pulumi.CustomResource {
  /// An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
  late final pulumi.Output<String?> description;

  /// An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
  late final pulumi.Output<String?> displayName;

  /// Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
  late final pulumi.Output<bool?> enabled;

  /// If true, the notification channel will be deleted regardless
  /// of its use in alert policies (the policies will be updated
  /// to remove the channel). If false, channels that are still
  /// referenced by an existing alerting policy will fail to be
  /// deleted in a delete operation.
  late final pulumi.Output<bool?> forceDelete;

  /// Configuration fields that define the channel and its behavior. The
  /// permissible and required labels are specified in the
  /// NotificationChannelDescriptor corresponding to the type field.
  /// Labels with sensitive data are obfuscated by the API and therefore the provider cannot
  /// determine if there are upstream changes to these fields. They can also be configured via
  /// the sensitive_labels block, but cannot be configured in both places.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The full REST resource name for this channel. The syntax is:
  /// projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]
  /// The [CHANNEL_ID] is automatically assigned by the server on creation.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Different notification type behaviors are configured primarily using the the `labels` field on this
  /// resource. This block contains the labels which contain secrets or passwords so that they can be marked
  /// sensitive and hidden from plan output. The name of the field, eg: password, will be the key
  /// in the `labels` map in the api request.
  /// Credentials may not be specified in both locations and will cause an error. Changing from one location
  /// to a different credential configuration in the config will require an apply to update state.
  /// Structure is documented below.
  late final pulumi.Output<NotificationChannelSensitiveLabels?> sensitiveLabels;

  /// The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as "email", "slack", etc...
  late final pulumi.Output<String> type;

  /// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  late final pulumi.Output<Map<String, String>?> userLabels;

  /// Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
  late final pulumi.Output<String> verificationStatus;

  NotificationChannel(
    String name, {
    NotificationChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/notificationChannel:NotificationChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.enabled = registerOutput<bool?>('enabled');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.sensitiveLabels =
        registerOutput<NotificationChannelSensitiveLabels?>('sensitiveLabels');
    this.type = registerOutput<String>('type');
    this.userLabels = registerOutput<Map<String, String>?>('userLabels');
    this.verificationStatus = registerOutput<String>('verificationStatus');
  }
}
