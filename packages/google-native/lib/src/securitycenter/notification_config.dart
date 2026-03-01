import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_config_args.dart';
import 'streaming_config_response.dart';

/// Creates a notification config.
/// Auto-naming is currently not supported for this resource.
class NotificationConfig extends pulumi.CustomResource {
  /// Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters and contain alphanumeric characters, underscores, or hyphens only.
  late final pulumi.Output<String> configId;

  /// The description of the notification config (max of 1024 characters).
  late final pulumi.Output<String> description;

  /// The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/notificationConfigs/notify_public_bucket", "folders/{folder_id}/notificationConfigs/notify_public_bucket", or "projects/{project_id}/notificationConfigs/notify_public_bucket".
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The Pub/Sub topic to send notifications to. Its format is "projects/[project_id]/topics/[topic]".
  late final pulumi.Output<String> pubsubTopic;

  /// The service account that needs "pubsub.topics.publish" permission to publish to the Pub/Sub topic.
  late final pulumi.Output<String> serviceAccount;

  /// The config for triggering streaming-based notifications.
  late final pulumi.Output<StreamingConfigResponse> streamingConfig;

  /// Creates a new [NotificationConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationConfig]. {@macro pulumi_securitycenter_v1_notification_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationConfig(
    String name, {
    NotificationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:securitycenter/v1:NotificationConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.configId = registerOutput<String>('configId');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pubsubTopic = registerOutput<String>('pubsubTopic');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.streamingConfig = registerOutput<StreamingConfigResponse>(
      'streamingConfig',
    );
  }
}
