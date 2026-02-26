// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../folder_notification_config_streaming_config/folder_notification_config_streaming_config.dart';

/// The set of arguments for FolderNotificationConfig.
class FolderNotificationConfigArgs {
  /// This must be unique within the organization.
  final Input<String> configId;

  /// The description of the notification config (max of 1024 characters).
  final Input<String>? description;

  /// Numerical ID of the parent folder.
  final Input<String> folder;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/<span pulumi-lang-nodejs="[projectId]" pulumi-lang-dotnet="[ProjectId]" pulumi-lang-go="[projectId]" pulumi-lang-python="[project_id]" pulumi-lang-yaml="[projectId]" pulumi-lang-java="[projectId]">[project_id]</span>/topics/[topic]".
  final Input<String> pubsubTopic;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final Input<FolderNotificationConfigStreamingConfig> streamingConfig;

  FolderNotificationConfigArgs({
    required this.configId,
    this.description,
    required this.folder,
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
    map['pubsubTopic'] = pubsubTopic;
    map['streamingConfig'] = Input.mapInputValue<
        FolderNotificationConfigStreamingConfig,
        Map<String, dynamic>>(streamingConfig, (value) => value.toMap());
    return map;
  }

  factory FolderNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return FolderNotificationConfigArgs(
      configId: Input.asInput<String>(map['configId']),
      description: Input.asOptionalInput<String>(map['description']),
      folder: Input.asInput<String>(map['folder']),
      pubsubTopic: Input.asInput<String>(map['pubsubTopic']),
      streamingConfig: Input.asInput<FolderNotificationConfigStreamingConfig>(
          map['streamingConfig']),
    );
  }
}
