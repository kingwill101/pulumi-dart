// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2_project_notification_config_streaming_config/v2_project_notification_config_streaming_config.dart';

/// The set of arguments for V2ProjectNotificationConfig.
class V2ProjectNotificationConfigArgs {
  /// This must be unique within the project.
  final Input<String> configId;

  /// The description of the notification config (max of 1024 characters).
  final Input<String>? description;

  /// Location ID for the parent project. Defaults to <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span> if location is not provided.
  final Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/<span pulumi-lang-nodejs="[projectId]" pulumi-lang-dotnet="[ProjectId]" pulumi-lang-go="[projectId]" pulumi-lang-python="[project_id]" pulumi-lang-yaml="[projectId]" pulumi-lang-java="[projectId]">[project_id]</span>/topics/[topic]".
  final Input<String>? pubsubTopic;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final Input<V2ProjectNotificationConfigStreamingConfig> streamingConfig;

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
    map['streamingConfig'] = Input.mapInputValue<
        V2ProjectNotificationConfigStreamingConfig,
        Map<String, dynamic>>(streamingConfig, (value) => value.toMap());
    return map;
  }

  factory V2ProjectNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return V2ProjectNotificationConfigArgs(
      configId: Input.asInput<String>(map['configId']),
      description: Input.asOptionalInput<String>(map['description']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      pubsubTopic: Input.asOptionalInput<String>(map['pubsubTopic']),
      streamingConfig:
          Input.asInput<V2ProjectNotificationConfigStreamingConfig>(
              map['streamingConfig']),
    );
  }
}
