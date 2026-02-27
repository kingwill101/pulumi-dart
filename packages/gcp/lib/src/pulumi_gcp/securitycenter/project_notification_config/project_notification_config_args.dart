// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../project_notification_config_streaming_config/project_notification_config_streaming_config.dart';

/// The set of arguments for ProjectNotificationConfig.
class ProjectNotificationConfigArgs {
  /// This must be unique within the organization.
  final pulumi.Input<String> configId;

  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String> pubsubTopic;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<ProjectNotificationConfigStreamingConfig> streamingConfig;

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
    map['streamingConfig'] = pulumi.Input.mapInputValue<
        ProjectNotificationConfigStreamingConfig,
        Map<String, dynamic>>(streamingConfig, (value) => value.toMap());
    return map;
  }

  factory ProjectNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProjectNotificationConfigArgs(
      configId: pulumi.Input.asInput<String>(map['configId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pubsubTopic: pulumi.Input.asInput<String>(map['pubsubTopic']),
      streamingConfig:
          pulumi.Input.asInput<ProjectNotificationConfigStreamingConfig>(
              map['streamingConfig']),
    );
  }
}
