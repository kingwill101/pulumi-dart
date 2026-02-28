// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'streaming_config.dart';

/// {@template pulumi_securitycenter_v1_folder_notification_config_args_doc}
/// The set of arguments for FolderNotificationConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_folder_notification_config_args_doc}
class FolderNotificationConfigArgs {
  /// Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters and contain alphanumeric characters, underscores, or hyphens only.
  final pulumi.Input<String> configId;

  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  final pulumi.Input<String> folderId;

  /// The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/notificationConfigs/notify_public_bucket", "folders/{folder_id}/notificationConfigs/notify_public_bucket", or "projects/{project_id}/notificationConfigs/notify_public_bucket".
  final pulumi.Input<String>? name;

  /// The Pub/Sub topic to send notifications to. Its format is "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String>? pubsubTopic;

  /// The config for triggering streaming-based notifications.
  final pulumi.Input<StreamingConfig>? streamingConfig;

  /// Creates a new [FolderNotificationConfigArgs].
  /// [configId] Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters and contain alphanumeric characters, underscores, or hyphens only.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [folderId] Required.
  /// [name] The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/notificationConfigs/notify_public_bucket", "folders/{folder_id}/notificationConfigs/notify_public_bucket", or "projects/{project_id}/notificationConfigs/notify_public_bucket".
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is "projects/[project_id]/topics/[topic]".
  /// [streamingConfig] The config for triggering streaming-based notifications.
  FolderNotificationConfigArgs({
    required String configId,
    String? description,
    required String folderId,
    String? name,
    String? pubsubTopic,
    StreamingConfig? streamingConfig,
  })  : configId = pulumi.Input.asInput<String>(configId),
        description = pulumi.Input.asOptionalInput<String>(description),
        folderId = pulumi.Input.asInput<String>(folderId),
        name = pulumi.Input.asOptionalInput<String>(name),
        pubsubTopic = pulumi.Input.asOptionalInput<String>(pubsubTopic),
        streamingConfig =
            pulumi.Input.asOptionalInput<StreamingConfig>(streamingConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configId'] = configId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['folderId'] = folderId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pubsubTopicValue = pubsubTopic;
    if (pubsubTopicValue != null) {
      map['pubsubTopic'] = pubsubTopicValue;
    }
    final streamingConfigValue = streamingConfig;
    if (streamingConfigValue != null) {
      map['streamingConfig'] = pulumi.Input.mapOptionalInputValue<
          StreamingConfig,
          Map<String, dynamic>>(streamingConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FolderNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return FolderNotificationConfigArgs(
      configId: map['configId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      folderId: map['folderId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pubsubTopic:
          map['pubsubTopic'] == null ? null : map['pubsubTopic'] as String,
      streamingConfig: map['streamingConfig'] == null
          ? null
          : StreamingConfig.fromMap(
              (map['streamingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
