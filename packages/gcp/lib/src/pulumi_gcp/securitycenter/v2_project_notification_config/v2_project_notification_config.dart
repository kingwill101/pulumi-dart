import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2_project_notification_config_streaming_config/v2_project_notification_config_streaming_config.dart';
import 'v2_project_notification_config_args.dart';

/// This is a continuous export that exports findings to a Pub/Sub topic.
///
///
/// To get more information about ProjectNotificationConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/projects.locations.notificationConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs)
///
/// ## Example Usage
///
/// ### Scc V2 Project Notification Config Basic
///
///
///
///
/// ## Import
///
/// ProjectNotificationConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/notificationConfigs/{{config_id}}`
///
/// * `{{project}}/{{location}}/{{config_id}}`
///
/// * `{{location}}/{{config_id}}`
///
/// When using the `pulumi import` command, ProjectNotificationConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2ProjectNotificationConfig:V2ProjectNotificationConfig default projects/{{project}}/locations/{{location}}/notificationConfigs/{{config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2ProjectNotificationConfig:V2ProjectNotificationConfig default {{project}}/{{location}}/{{config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2ProjectNotificationConfig:V2ProjectNotificationConfig default {{location}}/{{config_id}}
/// ```
class V2ProjectNotificationConfig extends pulumi.CustomResource {
  /// This must be unique within the project.
  late final pulumi.Output<String> configId;

  /// The description of the notification config (max of 1024 characters).
  late final pulumi.Output<String?> description;

  /// Location ID for the parent project. Defaults to `global` if location is not provided.
  late final pulumi.Output<String?> location;

  /// The resource name of this notification config, in the format
  /// `projects/{{projectId}}/locations/{{location}}/notificationConfigs/{{config_id}}`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  late final pulumi.Output<String?> pubsubTopic;

  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  late final pulumi.Output<String> serviceAccount;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  late final pulumi.Output<V2ProjectNotificationConfigStreamingConfig>
      streamingConfig;

  V2ProjectNotificationConfig(
    String name, {
    V2ProjectNotificationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2ProjectNotificationConfig:V2ProjectNotificationConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configId = registerOutput<String>('configId');
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pubsubTopic = registerOutput<String?>('pubsubTopic');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.streamingConfig =
        registerOutput<V2ProjectNotificationConfigStreamingConfig>(
            'streamingConfig');
  }
}
