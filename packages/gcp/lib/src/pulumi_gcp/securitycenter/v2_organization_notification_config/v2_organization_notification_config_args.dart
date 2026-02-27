// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2_organization_notification_config_streaming_config/v2_organization_notification_config_streaming_config.dart';

/// The set of arguments for V2OrganizationNotificationConfig.
class V2OrganizationNotificationConfigArgs {
  /// This must be unique within the organization.
  final pulumi.Input<String> configId;

  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;

  /// location Id is provided by organization. If not provided, Use global as default.
  final pulumi.Input<String>? location;

  /// The organization whose Cloud Security Command Center the Notification
  /// Config lives in.
  final pulumi.Input<String> organization;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String> pubsubTopic;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<V2OrganizationNotificationConfigStreamingConfig>
      streamingConfig;

  V2OrganizationNotificationConfigArgs({
    required this.configId,
    this.description,
    this.location,
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
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['organization'] = organization;
    map['pubsubTopic'] = pubsubTopic;
    map['streamingConfig'] = pulumi.Input.mapInputValue<
        V2OrganizationNotificationConfigStreamingConfig,
        Map<String, dynamic>>(streamingConfig, (value) => value.toMap());
    return map;
  }

  factory V2OrganizationNotificationConfigArgs.fromMap(
      Map<String, dynamic> map) {
    return V2OrganizationNotificationConfigArgs(
      configId: pulumi.Input.asInput<String>(map['configId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      organization: pulumi.Input.asInput<String>(map['organization']),
      pubsubTopic: pulumi.Input.asInput<String>(map['pubsubTopic']),
      streamingConfig:
          pulumi.Input.asInput<V2OrganizationNotificationConfigStreamingConfig>(
              map['streamingConfig']),
    );
  }
}
