// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../project_notification_config_streaming_config/project_notification_config_streaming_config.dart';

/// The set of arguments for ProjectNotificationConfig.
class ProjectNotificationConfigArgs {
  /// This must be unique within the organization.
  final Input<String> configId;

  /// The description of the notification config (max of 1024 characters).
  final Input<String>? description;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final Input<String> pubsubTopic;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final Input<ProjectNotificationConfigStreamingConfig> streamingConfig;

  ProjectNotificationConfigArgs({
    required this.configId,
    this.description,
    this.project,
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
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pubsubTopic'] = pubsubTopic;
    map['streamingConfig'] = Input.mapInputValue<
        ProjectNotificationConfigStreamingConfig,
        Map<String, dynamic>>(streamingConfig, (value) => value.toMap());
    return map;
  }

  factory ProjectNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProjectNotificationConfigArgs(
      configId: Input.asInput<String>(map['configId']),
      description: Input.asOptionalInput<String>(map['description']),
      project: Input.asOptionalInput<String>(map['project']),
      pubsubTopic: Input.asInput<String>(map['pubsubTopic']),
      streamingConfig: Input.asInput<ProjectNotificationConfigStreamingConfig>(
          map['streamingConfig']),
    );
  }
}
