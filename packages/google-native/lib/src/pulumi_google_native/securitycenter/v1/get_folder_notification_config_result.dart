// ignore_for_file: unused_element, unnecessary_cast

import 'streaming_config_response.dart';

/// Result data returned by getFolderNotificationConfig.
class GetFolderNotificationConfigResult {
  /// The description of the notification config (max of 1024 characters).
  final String description;

  /// The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/notificationConfigs/notify_public_bucket", "folders/{folder_id}/notificationConfigs/notify_public_bucket", or "projects/{project_id}/notificationConfigs/notify_public_bucket".
  final String name;

  /// The Pub/Sub topic to send notifications to. Its format is "projects/[project_id]/topics/[topic]".
  final String pubsubTopic;

  /// The service account that needs "pubsub.topics.publish" permission to publish to the Pub/Sub topic.
  final String serviceAccount;

  /// The config for triggering streaming-based notifications.
  final StreamingConfigResponse streamingConfig;

  GetFolderNotificationConfigResult({
    required this.description,
    required this.name,
    required this.pubsubTopic,
    required this.serviceAccount,
    required this.streamingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['name'] = name;
    map['pubsubTopic'] = pubsubTopic;
    map['serviceAccount'] = serviceAccount;
    map['streamingConfig'] = streamingConfig.toMap();
    return map;
  }

  factory GetFolderNotificationConfigResult.fromMap(Map<String, dynamic> map) {
    return GetFolderNotificationConfigResult(
      description: map['description'] as String,
      name: map['name'] as String,
      pubsubTopic: map['pubsubTopic'] as String,
      serviceAccount: map['serviceAccount'] as String,
      streamingConfig: StreamingConfigResponse.fromMap(
          (map['streamingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
