import 'package:pulumi/pulumi.dart';
import 'organization_notification_config_args.dart';
import 'streaming_config_response.dart';

/// Creates a notification config.
class OrganizationNotificationConfig extends CustomResource {
  /// Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters and contain alphanumeric characters, underscores, or hyphens only.
  late final Output<String> configId;

  /// The description of the notification config (max of 1024 characters).
  late final Output<String> description;

  /// The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/notificationConfigs/notify_public_bucket", "folders/{folder_id}/notificationConfigs/notify_public_bucket", or "projects/{project_id}/notificationConfigs/notify_public_bucket".
  late final Output<String> name;
  late final Output<String> organizationId;

  /// The Pub/Sub topic to send notifications to. Its format is "projects/[project_id]/topics/[topic]".
  late final Output<String> pubsubTopic;

  /// The service account that needs "pubsub.topics.publish" permission to publish to the Pub/Sub topic.
  late final Output<String> serviceAccount;

  /// The config for triggering streaming-based notifications.
  late final Output<StreamingConfigResponse> streamingConfig;

  OrganizationNotificationConfig(
    String name, {
    OrganizationNotificationConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:securitycenter/v1:OrganizationNotificationConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.pubsubTopic = Output.createUnknown<String>();
    this.serviceAccount = Output.createUnknown<String>();
    this.streamingConfig = Output.createUnknown<StreamingConfigResponse>();
  }
}
