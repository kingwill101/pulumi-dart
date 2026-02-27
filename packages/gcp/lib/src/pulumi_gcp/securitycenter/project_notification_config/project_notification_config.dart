import 'package:pulumi/pulumi.dart' as pulumi;
import '../project_notification_config_streaming_config/project_notification_config_streaming_config.dart';
import 'project_notification_config_args.dart';

/// A Cloud Security Command Center (Cloud SCC) notification configs. A
/// notification config is a Cloud SCC resource that contains the
/// configuration to send notifications for create/update events of
/// findings, assets and etc.
/// > **Note:** In order to use Cloud SCC resources, your organization must be enrolled
/// in [SCC Standard/Premium](https://cloud.google.com/security-command-center/docs/quickstart-security-command-center).
/// Without doing so, you may run into errors during resource creation.
///
///
/// To get more information about ProjectNotificationConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/projects.notificationConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs)
///
/// ## Example Usage
///
/// ### Scc Project Notification Config Basic
///
///
///
///
/// ## Import
///
/// ProjectNotificationConfig can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ProjectNotificationConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/projectNotificationConfig:ProjectNotificationConfig default {{name}}
/// ```
class ProjectNotificationConfig extends pulumi.CustomResource {
  /// This must be unique within the organization.
  late final pulumi.Output<String> configId;

  /// The description of the notification config (max of 1024 characters).
  late final pulumi.Output<String?> description;

  /// The resource name of this notification config, in the format
  /// `projects/{{projectId}}/notificationConfigs/{{config_id}}`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  late final pulumi.Output<String> pubsubTopic;

  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  late final pulumi.Output<String> serviceAccount;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  late final pulumi.Output<ProjectNotificationConfigStreamingConfig>
      streamingConfig;

  ProjectNotificationConfig(
    String name, {
    ProjectNotificationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/projectNotificationConfig:ProjectNotificationConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configId = registerOutput<String>('configId');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pubsubTopic = registerOutput<String>('pubsubTopic');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.streamingConfig =
        registerOutput<ProjectNotificationConfigStreamingConfig>(
            'streamingConfig');
  }
}
