import 'package:pulumi/pulumi.dart' as pulumi;
import '../folder_notification_config_streaming_config/folder_notification_config_streaming_config.dart';
import 'folder_notification_config_args.dart';

/// A Cloud Security Command Center (Cloud SCC) notification configs. A
/// notification config is a Cloud SCC resource that contains the
/// configuration to send notifications for create/update events of
/// findings, assets and etc.
/// > **Note:** In order to use Cloud SCC resources, your organization must be enrolled
/// in [SCC Standard/Premium](https://cloud.google.com/security-command-center/docs/quickstart-security-command-center).
/// Without doing so, you may run into errors during resource creation.
///
///
/// To get more information about FolderNotificationConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/folders.notificationConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs)
///
/// ## Example Usage
///
/// ### Scc Folder Notification Config Basic
///
///
///
///
/// ## Import
///
/// FolderNotificationConfig can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/notificationConfigs/{{config_id}}`
///
/// * `{{folder}}/{{config_id}}`
///
/// When using the `pulumi import` command, FolderNotificationConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/folderNotificationConfig:FolderNotificationConfig default folders/{{folder}}/notificationConfigs/{{config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/folderNotificationConfig:FolderNotificationConfig default {{folder}}/{{config_id}}
/// ```
class FolderNotificationConfig extends pulumi.CustomResource {
  /// This must be unique within the organization.
  late final pulumi.Output<String> configId;

  /// The description of the notification config (max of 1024 characters).
  late final pulumi.Output<String?> description;

  /// Numerical ID of the parent folder.
  late final pulumi.Output<String> folder;

  /// The resource name of this notification config, in the format
  /// `folders/{{folder}}/notificationConfigs/{{config_id}}`.
  late final pulumi.Output<String> name;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  late final pulumi.Output<String> pubsubTopic;

  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  late final pulumi.Output<String> serviceAccount;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  late final pulumi.Output<FolderNotificationConfigStreamingConfig>
      streamingConfig;

  FolderNotificationConfig(
    String name, {
    FolderNotificationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/folderNotificationConfig:FolderNotificationConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configId = registerOutput<String>('configId');
    this.description = registerOutput<String?>('description');
    this.folder = registerOutput<String>('folder');
    this.name = registerOutput<String>('name');
    this.pubsubTopic = registerOutput<String>('pubsubTopic');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.streamingConfig =
        registerOutput<FolderNotificationConfigStreamingConfig>(
            'streamingConfig');
  }
}
