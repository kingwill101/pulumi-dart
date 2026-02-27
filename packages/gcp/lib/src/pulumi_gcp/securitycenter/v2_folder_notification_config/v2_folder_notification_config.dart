import 'package:pulumi/pulumi.dart';
import '../v2_folder_notification_config_streaming_config/v2_folder_notification_config_streaming_config.dart';
import 'v2_folder_notification_config_args.dart';

/// This is a continuous export that exports findings to a Pub/Sub topic.
///
///
/// To get more information about FolderNotificationConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/folders.locations.notificationConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs)
///
/// ## Example Usage
///
/// ### Scc V2 Folder Notification Config Basic
///
///
///
///
/// ## Import
///
/// FolderNotificationConfig can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/locations/{{location}}/notificationConfigs/{{config_id}}`
///
/// * `{{folder}}/{{location}}/{{config_id}}`
///
/// When using the `pulumi import` command, FolderNotificationConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2FolderNotificationConfig:V2FolderNotificationConfig default folders/{{folder}}/locations/{{location}}/notificationConfigs/{{config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2FolderNotificationConfig:V2FolderNotificationConfig default {{folder}}/{{location}}/{{config_id}}
/// ```
class V2FolderNotificationConfig extends CustomResource {
  /// This must be unique within the organization.
  late final Output<String> configId;

  /// The description of the notification config (max of 1024 characters).
  late final Output<String?> description;

  /// Numerical ID of the parent folder.
  late final Output<String> folder;

  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  late final Output<String?> location;

  /// The resource name of this notification config, in the format
  /// `folders/{{folder}}/locations/{{location}}/notificationConfigs/{{config_id}}`.
  late final Output<String> name;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  late final Output<String> pubsubTopic;

  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  late final Output<String> serviceAccount;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  late final Output<V2FolderNotificationConfigStreamingConfig> streamingConfig;

  V2FolderNotificationConfig(
    String name, {
    V2FolderNotificationConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2FolderNotificationConfig:V2FolderNotificationConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configId = registerOutput<String>('configId');
    this.description = registerOutput<String?>('description');
    this.folder = registerOutput<String>('folder');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.pubsubTopic = registerOutput<String>('pubsubTopic');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.streamingConfig =
        registerOutput<V2FolderNotificationConfigStreamingConfig>(
            'streamingConfig');
  }
}
