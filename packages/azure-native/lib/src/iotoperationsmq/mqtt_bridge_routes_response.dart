// ignore_for_file: unused_element, unnecessary_cast

import 'mqtt_bridge_route_shared_subscription_response.dart';

/// MqttBridgeTopicMap route properties
class MqttBridgeRoutesResponse {
  /// Direction of the route.
  final String direction;
  /// Name of the route.
  final String name;
  /// Qos for MQTT connection.
  final int? qos;
  /// Shared subscription topic details.
  final MqttBridgeRouteSharedSubscriptionResponse? sharedSubscription;
  /// Source topic of the route.
  final String source;
  /// Target topic of the route. Ignore if same as source
  final String? target;

  /// Creates a new [MqttBridgeRoutesResponse].
  /// [direction] Direction of the route.
  /// [name] Name of the route.
  /// [qos] Qos for MQTT connection.
  /// [sharedSubscription] Shared subscription topic details.
  /// [source] Source topic of the route.
  /// [target] Target topic of the route. Ignore if same as source
  MqttBridgeRoutesResponse({
    required this.direction,
    required this.name,
    this.qos,
    this.sharedSubscription,
    required this.source,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'name': name,
      'qos': ?qos,
      'sharedSubscription': ?sharedSubscription == null ? null : sharedSubscription!.toMap(),
      'source': source,
      'target': ?target,
    };
  }

  factory MqttBridgeRoutesResponse.fromMap(Map<String, dynamic> map) {
    return MqttBridgeRoutesResponse(
      direction: map['direction'] as String,
      name: map['name'] as String,
      qos: map['qos'] == null ? null : map['qos'] as int,
      sharedSubscription: map['sharedSubscription'] == null ? null : MqttBridgeRouteSharedSubscriptionResponse.fromMap((map['sharedSubscription'] as Map).cast<String, dynamic>()),
      source: map['source'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

