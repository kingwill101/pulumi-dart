// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_property.dart';
import 'mqtt_bridge_routes.dart';

/// {@template pulumi_iotoperationsmq_mqtt_bridge_topic_map_args_doc}
/// The set of arguments for MqttBridgeTopicMap.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_mqtt_bridge_topic_map_args_doc}
class MqttBridgeTopicMapArgs {
  /// Extended Location
  final pulumi.Input<ExtendedLocationProperty> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// Name of MQ mqttBridgeConnector resource
  final pulumi.Input<String> mqttBridgeConnectorName;
  /// The MqttBridgeConnector CRD it refers to.
  final pulumi.Input<String> mqttBridgeConnectorRef;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The route details for MqttBridge connector.
  final pulumi.Input<List<MqttBridgeRoutes>>? routes;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of MQ mqttBridgeTopicMap resource
  final pulumi.Input<String>? topicMapName;

  /// Creates a new [MqttBridgeTopicMapArgs].
  /// [extendedLocation] Extended Location
  /// [location] The geo-location where the resource lives
  /// [mqName] Name of MQ resource
  /// [mqttBridgeConnectorName] Name of MQ mqttBridgeConnector resource
  /// [mqttBridgeConnectorRef] The MqttBridgeConnector CRD it refers to.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [routes] The route details for MqttBridge connector.
  /// [tags] Resource tags.
  /// [topicMapName] Name of MQ mqttBridgeTopicMap resource
  MqttBridgeTopicMapArgs({
    required this.extendedLocation,
    this.location,
    required this.mqName,
    required this.mqttBridgeConnectorName,
    required this.mqttBridgeConnectorRef,
    required this.resourceGroupName,
    this.routes,
    this.tags,
    this.topicMapName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocationProperty, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'mqName': mqName,
      'mqttBridgeConnectorName': mqttBridgeConnectorName,
      'mqttBridgeConnectorRef': mqttBridgeConnectorRef,
      'resourceGroupName': resourceGroupName,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<MqttBridgeRoutes>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<MqttBridgeRoutes, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'topicMapName': ?topicMapName,
    };
  }

  factory MqttBridgeTopicMapArgs.fromMap(Map<String, dynamic> map) {
    return MqttBridgeTopicMapArgs(
      extendedLocation: pulumi.Input.fromValue(ExtendedLocationProperty.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mqName: pulumi.Input.fromValue(map['mqName'] as String),
      mqttBridgeConnectorName: pulumi.Input.fromValue(map['mqttBridgeConnectorName'] as String),
      mqttBridgeConnectorRef: pulumi.Input.fromValue(map['mqttBridgeConnectorRef'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MqttBridgeRoutes>(guardedValue, (value) => MqttBridgeRoutes.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topicMapName: (() { final guardedValue = map['topicMapName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

