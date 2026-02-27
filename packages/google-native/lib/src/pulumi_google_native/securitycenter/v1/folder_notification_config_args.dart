// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'streaming_config.dart';

/// The set of arguments for FolderNotificationConfig.
class FolderNotificationConfigArgs {
  /// Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters and contain alphanumeric characters, underscores, or hyphens only.
  final Input<String> configId;

  /// The description of the notification config (max of 1024 characters).
  final Input<String>? description;
  final Input<String> folderId;

  /// The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/notificationConfigs/notify_public_bucket", "folders/{folder_id}/notificationConfigs/notify_public_bucket", or "projects/{project_id}/notificationConfigs/notify_public_bucket".
  final Input<String>? name;

  /// The Pub/Sub topic to send notifications to. Its format is "projects/[project_id]/topics/[topic]".
  final Input<String>? pubsubTopic;

  /// The config for triggering streaming-based notifications.
  final Input<StreamingConfig>? streamingConfig;

  FolderNotificationConfigArgs({
    required this.configId,
    this.description,
    required this.folderId,
    this.name,
    this.pubsubTopic,
    this.streamingConfig,
  });

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
      map['streamingConfig'] =
          Input.mapOptionalInputValue<StreamingConfig, Map<String, dynamic>>(
              streamingConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FolderNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return FolderNotificationConfigArgs(
      configId: Input.asInput<String>(map['configId']),
      description: Input.asOptionalInput<String>(map['description']),
      folderId: Input.asInput<String>(map['folderId']),
      name: Input.asOptionalInput<String>(map['name']),
      pubsubTopic: Input.asOptionalInput<String>(map['pubsubTopic']),
      streamingConfig:
          Input.asOptionalInput<StreamingConfig>(map['streamingConfig']),
    );
  }
}
