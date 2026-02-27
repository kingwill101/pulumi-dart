// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2_project_notification_config_streaming_config/v2_project_notification_config_streaming_config.dart';

/// The set of arguments for V2ProjectNotificationConfig.
class V2ProjectNotificationConfigArgs {
  /// This must be unique within the project.
  final pulumi.Input<String> configId;

  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;

  /// Location ID for the parent project. Defaults to `global` if location is not provided.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String>? pubsubTopic;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<V2ProjectNotificationConfigStreamingConfig>
      streamingConfig;

  V2ProjectNotificationConfigArgs({
    required this.configId,
    this.description,
    this.location,
    this.project,
    this.pubsubTopic,
    required this.streamingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configId'] = configId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pubsubTopicValue = pubsubTopic;
    if (pubsubTopicValue != null) {
      map['pubsubTopic'] = pubsubTopicValue;
    }
    map['streamingConfig'] = pulumi.Input.mapInputValue<
        V2ProjectNotificationConfigStreamingConfig,
        Map<String, dynamic>>(streamingConfig, (value) => value.toMap());
    return map;
  }

  factory V2ProjectNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return V2ProjectNotificationConfigArgs(
      configId: pulumi.Input.asInput<String>(map['configId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pubsubTopic: pulumi.Input.asOptionalInput<String>(map['pubsubTopic']),
      streamingConfig:
          pulumi.Input.asInput<V2ProjectNotificationConfigStreamingConfig>(
              map['streamingConfig']),
    );
  }
}
