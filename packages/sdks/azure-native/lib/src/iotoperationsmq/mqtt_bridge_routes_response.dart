// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mqtt_bridge_route_shared_subscription_response.dart';

/// MqttBridgeTopicMap route properties
class MqttBridgeRoutesResponse {
  /// Direction of the route.
  final pulumi.Input<String> direction;
  /// Name of the route.
  final pulumi.Input<String> name;
  /// Qos for MQTT connection.
  final pulumi.Input<int>? qos;
  /// Shared subscription topic details.
  final pulumi.Input<MqttBridgeRouteSharedSubscriptionResponse>? sharedSubscription;
  /// Source topic of the route.
  final pulumi.Input<String> source;
  /// Target topic of the route. Ignore if same as source
  final pulumi.Input<String>? target;

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
      'sharedSubscription': ?pulumi.Input.mapOptionalInputValue<MqttBridgeRouteSharedSubscriptionResponse, Map<String, dynamic>>(sharedSubscription, (value) => value.toMap()),
      'source': source,
      'target': ?target,
    };
  }

  factory MqttBridgeRoutesResponse.fromMap(Map<String, dynamic> map) {
    return MqttBridgeRoutesResponse(
      direction: (map['direction'] as String).input(),
      name: (map['name'] as String).input(),
      qos: map['qos'] == null ? null : (map['qos'] as int).input(),
      sharedSubscription: map['sharedSubscription'] == null ? null : (MqttBridgeRouteSharedSubscriptionResponse.fromMap((map['sharedSubscription'] as Map).cast<String, dynamic>())).input(),
      source: (map['source'] as String).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
    );
  }
}

