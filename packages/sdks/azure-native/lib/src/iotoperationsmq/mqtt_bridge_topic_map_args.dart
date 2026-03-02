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
      extendedLocation: (ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mqName: (map['mqName'] as String).input(),
      mqttBridgeConnectorName: (map['mqttBridgeConnectorName'] as String).input(),
      mqttBridgeConnectorRef: (map['mqttBridgeConnectorRef'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<MqttBridgeRoutes>(map['routes'], (value) => MqttBridgeRoutes.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      topicMapName: map['topicMapName'] == null ? null : (map['topicMapName'] as String).input(),
    );
  }
}

