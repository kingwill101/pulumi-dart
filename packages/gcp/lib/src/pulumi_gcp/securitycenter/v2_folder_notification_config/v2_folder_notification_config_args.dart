// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2_folder_notification_config_streaming_config/v2_folder_notification_config_streaming_config.dart';

/// The set of arguments for V2FolderNotificationConfig.
class V2FolderNotificationConfigArgs {
  /// This must be unique within the organization.
  final Input<String> configId;

  /// The description of the notification config (max of 1024 characters).
  final Input<String>? description;

  /// Numerical ID of the parent folder.
  final Input<String> folder;

  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  final Input<String>? location;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final Input<String> pubsubTopic;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final Input<V2FolderNotificationConfigStreamingConfig> streamingConfig;

  V2FolderNotificationConfigArgs({
    required this.configId,
    this.description,
    required this.folder,
    this.location,
    required this.pubsubTopic,
    required this.streamingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configId'] = configId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['folder'] = folder;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['pubsubTopic'] = pubsubTopic;
    map['streamingConfig'] = Input.mapInputValue<
        V2FolderNotificationConfigStreamingConfig,
        Map<String, dynamic>>(streamingConfig, (value) => value.toMap());
    return map;
  }

  factory V2FolderNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return V2FolderNotificationConfigArgs(
      configId: Input.asInput<String>(map['configId']),
      description: Input.asOptionalInput<String>(map['description']),
      folder: Input.asInput<String>(map['folder']),
      location: Input.asOptionalInput<String>(map['location']),
      pubsubTopic: Input.asInput<String>(map['pubsubTopic']),
      streamingConfig: Input.asInput<V2FolderNotificationConfigStreamingConfig>(
          map['streamingConfig']),
    );
  }
}
