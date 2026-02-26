// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../notification_config_streaming_config/notification_config_streaming_config.dart';

/// The set of arguments for NotificationConfig.
class NotificationConfigArgs {
  /// This must be unique within the organization.
  final Input<String> configId;

  /// The description of the notification config (max of 1024 characters).
  final Input<String>? description;

  /// The organization whose Cloud Security Command Center the Notification
  /// Config lives in.
  final Input<String> organization;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/<span pulumi-lang-nodejs="[projectId]" pulumi-lang-dotnet="[ProjectId]" pulumi-lang-go="[projectId]" pulumi-lang-python="[project_id]" pulumi-lang-yaml="[projectId]" pulumi-lang-java="[projectId]">[project_id]</span>/topics/[topic]".
  final Input<String> pubsubTopic;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final Input<NotificationConfigStreamingConfig> streamingConfig;

  NotificationConfigArgs({
    required this.configId,
    this.description,
    required this.organization,
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
    map['organization'] = organization;
    map['pubsubTopic'] = pubsubTopic;
    map['streamingConfig'] = Input.mapInputValue<
        NotificationConfigStreamingConfig,
        Map<String, dynamic>>(streamingConfig, (value) => value.toMap());
    return map;
  }

  factory NotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return NotificationConfigArgs(
      configId: Input.asInput<String>(map['configId']),
      description: Input.asOptionalInput<String>(map['description']),
      organization: Input.asInput<String>(map['organization']),
      pubsubTopic: Input.asInput<String>(map['pubsubTopic']),
      streamingConfig: Input.asInput<NotificationConfigStreamingConfig>(
          map['streamingConfig']),
    );
  }
}
