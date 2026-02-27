// ignore_for_file: unused_element, unnecessary_cast

import 'delivery_config_response.dart';
import 'export_config_response.dart';

/// Result data returned by getSubscription.
class GetSubscriptionPubsubliteV1Result {
  /// The settings for this subscription's message delivery.
  final DeliveryConfigResponse deliveryConfig;

  /// If present, messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a destination.
  final ExportConfigResponse exportConfig;

  /// The name of the subscription. Structured like: projects/{project_number}/locations/{location}/subscriptions/{subscription_id}
  final String name;

  /// The name of the topic this subscription is attached to. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  final String topic;

  GetSubscriptionPubsubliteV1Result({
    required this.deliveryConfig,
    required this.exportConfig,
    required this.name,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deliveryConfig'] = deliveryConfig.toMap();
    map['exportConfig'] = exportConfig.toMap();
    map['name'] = name;
    map['topic'] = topic;
    return map;
  }

  factory GetSubscriptionPubsubliteV1Result.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionPubsubliteV1Result(
      deliveryConfig: DeliveryConfigResponse.fromMap(
          (map['deliveryConfig'] as Map).cast<String, dynamic>()),
      exportConfig: ExportConfigResponse.fromMap(
          (map['exportConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      topic: map['topic'] as String,
    );
  }
}
