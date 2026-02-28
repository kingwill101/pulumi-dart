// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_config.dart';
import 'export_config.dart';

/// {@template pulumi_pubsublite_v1_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_pubsublite_v1_subscription_args_doc}
class SubscriptionArgs {
  /// The settings for this subscription's message delivery.
  final pulumi.Input<DeliveryConfig>? deliveryConfig;

  /// If present, messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a destination.
  final pulumi.Input<ExportConfig>? exportConfig;
  final pulumi.Input<String>? location;

  /// The name of the subscription. Structured like: projects/{project_number}/locations/{location}/subscriptions/{subscription_id}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// If true, the newly created subscription will only receive messages published after the subscription was created. Otherwise, the entire message backlog will be received on the subscription. Defaults to false.
  final pulumi.Input<bool>? skipBacklog;

  /// Required. The ID to use for the subscription, which will become the final component of the subscription's name. This value is structured like: `my-sub-name`.
  final pulumi.Input<String> subscriptionId;

  /// The name of the topic this subscription is attached to. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  final pulumi.Input<String>? topic;

  /// Creates a new [SubscriptionArgs].
  /// [deliveryConfig] The settings for this subscription's message delivery.
  /// [exportConfig] If present, messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a destination.
  /// [location] Optional.
  /// [name] The name of the subscription. Structured like: projects/{project_number}/locations/{location}/subscriptions/{subscription_id}
  /// [project] Optional.
  /// [skipBacklog] If true, the newly created subscription will only receive messages published after the subscription was created. Otherwise, the entire message backlog will be received on the subscription. Defaults to false.
  /// [subscriptionId] Required. The ID to use for the subscription, which will become the final component of the subscription's name. This value is structured like: `my-sub-name`.
  /// [topic] The name of the topic this subscription is attached to. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  SubscriptionArgs({
    DeliveryConfig? deliveryConfig,
    ExportConfig? exportConfig,
    String? location,
    String? name,
    String? project,
    bool? skipBacklog,
    required String subscriptionId,
    String? topic,
  })  : deliveryConfig =
            pulumi.Input.asOptionalInput<DeliveryConfig>(deliveryConfig),
        exportConfig = pulumi.Input.asOptionalInput<ExportConfig>(exportConfig),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        skipBacklog = pulumi.Input.asOptionalInput<bool>(skipBacklog),
        subscriptionId = pulumi.Input.asInput<String>(subscriptionId),
        topic = pulumi.Input.asOptionalInput<String>(topic);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deliveryConfigValue = deliveryConfig;
    if (deliveryConfigValue != null) {
      map['deliveryConfig'] = pulumi.Input.mapOptionalInputValue<DeliveryConfig,
          Map<String, dynamic>>(deliveryConfigValue, (value) => value.toMap());
    }
    final exportConfigValue = exportConfig;
    if (exportConfigValue != null) {
      map['exportConfig'] = pulumi.Input.mapOptionalInputValue<ExportConfig,
          Map<String, dynamic>>(exportConfigValue, (value) => value.toMap());
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

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      deliveryConfig: map['deliveryConfig'] == null
          ? null
          : DeliveryConfig.fromMap(
              (map['deliveryConfig'] as Map).cast<String, dynamic>()),
      exportConfig: map['exportConfig'] == null
          ? null
          : ExportConfig.fromMap(
              (map['exportConfig'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      skipBacklog:
          map['skipBacklog'] == null ? null : map['skipBacklog'] as bool,
      subscriptionId: map['subscriptionId'] as String,
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
