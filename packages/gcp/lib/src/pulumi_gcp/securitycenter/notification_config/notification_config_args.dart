// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../notification_config_streaming_config/notification_config_streaming_config.dart';

/// The set of arguments for NotificationConfig.
class NotificationConfigArgs {
  /// This must be unique within the organization.
  final pulumi.Input<String> configId;

  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;

  /// The organization whose Cloud Security Command Center the Notification
  /// Config lives in.
  final pulumi.Input<String> organization;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String> pubsubTopic;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<NotificationConfigStreamingConfig> streamingConfig;

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
    map['streamingConfig'] = pulumi.Input.mapInputValue<
        NotificationConfigStreamingConfig,
        Map<String, dynamic>>(streamingConfig, (value) => value.toMap());
    return map;
  }

  factory NotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return NotificationConfigArgs(
      configId: pulumi.Input.asInput<String>(map['configId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      organization: pulumi.Input.asInput<String>(map['organization']),
      pubsubTopic: pulumi.Input.asInput<String>(map['pubsubTopic']),
      streamingConfig: pulumi.Input.asInput<NotificationConfigStreamingConfig>(
          map['streamingConfig']),
    );
  }
}
