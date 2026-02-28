// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'streaming_config.dart';

/// {@template pulumi_securitycenter_v1_organization_notification_config_args_doc}
/// The set of arguments for OrganizationNotificationConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_organization_notification_config_args_doc}
class OrganizationNotificationConfigArgs {
  /// Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters and contain alphanumeric characters, underscores, or hyphens only.
  final pulumi.Input<String> configId;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/notificationConfigs/notify_public_bucket", "folders/{folder_id}/notificationConfigs/notify_public_bucket", or "projects/{project_id}/notificationConfigs/notify_public_bucket".
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// The Pub/Sub topic to send notifications to. Its format is "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String>? pubsubTopic;
  /// The config for triggering streaming-based notifications.
  final pulumi.Input<StreamingConfig>? streamingConfig;

  /// Creates a new [OrganizationNotificationConfigArgs].
  /// [configId] Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters and contain alphanumeric characters, underscores, or hyphens only.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [name] The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/notificationConfigs/notify_public_bucket", "folders/{folder_id}/notificationConfigs/notify_public_bucket", or "projects/{project_id}/notificationConfigs/notify_public_bucket".
  /// [organizationId] Required.
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is "projects/[project_id]/topics/[topic]".
  /// [streamingConfig] The config for triggering streaming-based notifications.
  OrganizationNotificationConfigArgs({
    required String configId,
    String? description,
    String? name,
    required String organizationId,
    String? pubsubTopic,
    StreamingConfig? streamingConfig,
  }) :
      configId = pulumi.Input.asInput<String>(configId),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      pubsubTopic = pulumi.Input.asOptionalInput<String>(pubsubTopic),
      streamingConfig = pulumi.Input.asOptionalInput<StreamingConfig>(streamingConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'description': ?description,
      'name': ?name,
      'organizationId': organizationId,
      'pubsubTopic': ?pubsubTopic,
      'streamingConfig': ?pulumi.Input.mapOptionalInputValue<StreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory OrganizationNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationNotificationConfigArgs(
      configId: map['configId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      pubsubTopic: map['pubsubTopic'] == null ? null : map['pubsubTopic'] as String,
      streamingConfig: map['streamingConfig'] == null ? null : StreamingConfig.fromMap((map['streamingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

