// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_notification_config_streaming_config.dart';

/// {@template pulumi_securitycenter_project_notification_config_project_notification_config_args_doc}
/// The set of arguments for ProjectNotificationConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_project_notification_config_project_notification_config_args_doc}
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

  /// Creates a new [ProjectNotificationConfigArgs].
  /// [configId] This must be unique within the organization.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [project] The ID of the project in which the resource belongs.
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [streamingConfig] The config for triggering streaming-based notifications.
  ProjectNotificationConfigArgs({
    required String configId,
    String? description,
    String? project,
    required String pubsubTopic,
    required ProjectNotificationConfigStreamingConfig streamingConfig,
  })  : configId = pulumi.Input.asInput<String>(configId),
        description = pulumi.Input.asOptionalInput<String>(description),
        project = pulumi.Input.asOptionalInput<String>(project),
        pubsubTopic = pulumi.Input.asInput<String>(pubsubTopic),
        streamingConfig =
            pulumi.Input.asInput<ProjectNotificationConfigStreamingConfig>(
                streamingConfig);

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
      configId: map['configId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pubsubTopic: map['pubsubTopic'] as String,
      streamingConfig: ProjectNotificationConfigStreamingConfig.fromMap(
          (map['streamingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
