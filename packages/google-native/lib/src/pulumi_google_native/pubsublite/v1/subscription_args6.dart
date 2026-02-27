// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'delivery_config.dart';
import 'export_config.dart';

/// The set of arguments for Subscription.
class SubscriptionArgs6 {
  /// The settings for this subscription's message delivery.
  final Input<DeliveryConfig>? deliveryConfig;

  /// If present, messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a destination.
  final Input<ExportConfig>? exportConfig;
  final Input<String>? location;

  /// The name of the subscription. Structured like: projects/{project_number}/locations/{location}/subscriptions/{subscription_id}
  final Input<String>? name;
  final Input<String>? project;

  /// If true, the newly created subscription will only receive messages published after the subscription was created. Otherwise, the entire message backlog will be received on the subscription. Defaults to false.
  final Input<bool>? skipBacklog;

  /// Required. The ID to use for the subscription, which will become the final component of the subscription's name. This value is structured like: `my-sub-name`.
  final Input<String> subscriptionId;

  /// The name of the topic this subscription is attached to. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  final Input<String>? topic;

  SubscriptionArgs6({
    this.deliveryConfig,
    this.exportConfig,
    this.location,
    this.name,
    this.project,
    this.skipBacklog,
    required this.subscriptionId,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deliveryConfigValue = deliveryConfig;
    if (deliveryConfigValue != null) {
      map['deliveryConfig'] =
          Input.mapOptionalInputValue<DeliveryConfig, Map<String, dynamic>>(
              deliveryConfigValue, (value) => value.toMap());
    }
    final exportConfigValue = exportConfig;
    if (exportConfigValue != null) {
      map['exportConfig'] =
          Input.mapOptionalInputValue<ExportConfig, Map<String, dynamic>>(
              exportConfigValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final skipBacklogValue = skipBacklog;
    if (skipBacklogValue != null) {
      map['skipBacklog'] = skipBacklogValue;
    }
    map['subscriptionId'] = subscriptionId;
    final topicValue = topic;
    if (topicValue != null) {
      map['topic'] = topicValue;
    }
    return map;
  }

  factory SubscriptionArgs6.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs6(
      deliveryConfig:
          Input.asOptionalInput<DeliveryConfig>(map['deliveryConfig']),
      exportConfig: Input.asOptionalInput<ExportConfig>(map['exportConfig']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      skipBacklog: Input.asOptionalInput<bool>(map['skipBacklog']),
      subscriptionId: Input.asInput<String>(map['subscriptionId']),
      topic: Input.asOptionalInput<String>(map['topic']),
    );
  }
}
