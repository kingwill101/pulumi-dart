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
    required pulumi.Output<ExtendedLocationProperty> extendedLocation,
    pulumi.Output<String>? location,
    required pulumi.Output<String> mqName,
    required pulumi.Output<String> mqttBridgeConnectorName,
    required pulumi.Output<String> mqttBridgeConnectorRef,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<MqttBridgeRoutes>>? routes,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? topicMapName,
  }) :
      extendedLocation = pulumi.Input.asInput<ExtendedLocationProperty>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      mqName = pulumi.Input.asInput<String>(mqName),
      mqttBridgeConnectorName = pulumi.Input.asInput<String>(mqttBridgeConnectorName),
      mqttBridgeConnectorRef = pulumi.Input.asInput<String>(mqttBridgeConnectorRef),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routes = pulumi.Input.asOptionalInput<List<MqttBridgeRoutes>>(routes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topicMapName = pulumi.Input.asOptionalInput<String>(topicMapName);

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
      extendedLocation: pulumi.Output.create<ExtendedLocationProperty>(ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mqName: pulumi.Output.create<String>(map['mqName'] as String),
      mqttBridgeConnectorName: pulumi.Output.create<String>(map['mqttBridgeConnectorName'] as String),
      mqttBridgeConnectorRef: pulumi.Output.create<String>(map['mqttBridgeConnectorRef'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routes: map['routes'] == null ? null : pulumi.Output.create<List<MqttBridgeRoutes>>(pulumi.Input.decodeList<MqttBridgeRoutes>(map['routes'], (value) => MqttBridgeRoutes.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      topicMapName: map['topicMapName'] == null ? null : pulumi.Output.create<String>(map['topicMapName'] as String),
    );
  }
}

