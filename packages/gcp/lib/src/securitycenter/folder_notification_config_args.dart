// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_notification_config_streaming_config.dart';

/// {@template pulumi_securitycenter_folder_notification_config_folder_notification_config_args_doc}
/// The set of arguments for FolderNotificationConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_folder_notification_config_folder_notification_config_args_doc}
class FolderNotificationConfigArgs {
  /// This must be unique within the organization.
  final pulumi.Input<String> configId;

  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;

  /// Numerical ID of the parent folder.
  final pulumi.Input<String> folder;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String> pubsubTopic;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<FolderNotificationConfigStreamingConfig> streamingConfig;

  /// Creates a new [FolderNotificationConfigArgs].
  /// [configId] This must be unique within the organization.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [folder] Numerical ID of the parent folder.
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [streamingConfig] The config for triggering streaming-based notifications.
  FolderNotificationConfigArgs({
    required String configId,
    String? description,
    required String folder,
    required String pubsubTopic,
    required FolderNotificationConfigStreamingConfig streamingConfig,
  })  : configId = pulumi.Input.asInput<String>(configId),
        description = pulumi.Input.asOptionalInput<String>(description),
        folder = pulumi.Input.asInput<String>(folder),
        pubsubTopic = pulumi.Input.asInput<String>(pubsubTopic),
        streamingConfig =
            pulumi.Input.asInput<FolderNotificationConfigStreamingConfig>(
                streamingConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configId'] = configId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['folder'] = folder;
    map['pubsubTopic'] = pubsubTopic;
    map['streamingConfig'] = pulumi.Input.mapInputValue<
        FolderNotificationConfigStreamingConfig,
        Map<String, dynamic>>(streamingConfig, (value) => value.toMap());
    return map;
  }

  factory FolderNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return FolderNotificationConfigArgs(
      configId: map['configId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      folder: map['folder'] as String,
      pubsubTopic: map['pubsubTopic'] as String,
      streamingConfig: FolderNotificationConfigStreamingConfig.fromMap(
          (map['streamingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
