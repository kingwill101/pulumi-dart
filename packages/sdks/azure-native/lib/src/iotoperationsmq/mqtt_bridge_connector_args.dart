// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image.dart';
import 'extended_location_property.dart';
import 'local_broker_connection_spec.dart';
import 'mqtt_bridge_remote_broker_connection_spec.dart';
import 'node_tolerations.dart';

/// {@template pulumi_iotoperationsmq_mqtt_bridge_connector_args_doc}
/// The set of arguments for MqttBridgeConnector.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_mqtt_bridge_connector_args_doc}
class MqttBridgeConnectorArgs {
  /// The number of instances to deploy for a bridge rollout.
  final pulumi.Input<int?>? bridgeInstances;
  /// The client id prefix of the dynamically generated client ids.
  final pulumi.Input<String?>? clientIdPrefix;
  /// Extended Location
  final pulumi.Input<ExtendedLocationProperty> extendedLocation;
  /// The details of MqttBridge Docker Image.
  final pulumi.Input<ContainerImage> image;
  /// The details for connecting with Local Broker.
  final pulumi.Input<LocalBrokerConnectionSpec?>? localBrokerConnection;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The log level of the Bridge Connector instances.
  final pulumi.Input<String?>? logLevel;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// Name of MQ mqttBridgeConnector resource
  final pulumi.Input<String?>? mqttBridgeConnectorName;
  /// The Node Tolerations for the Bridge Connector pods.
  final pulumi.Input<NodeTolerations?>? nodeTolerations;
  /// The protocol to use for connecting with Brokers.
  final pulumi.Input<dynamic> protocol;
  /// The details for connecting with Remote Broker.
  final pulumi.Input<MqttBridgeRemoteBrokerConnectionSpec> remoteBrokerConnection;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [MqttBridgeConnectorArgs].
  /// [bridgeInstances] The number of instances to deploy for a bridge rollout.
  /// [clientIdPrefix] The client id prefix of the dynamically generated client ids.
  /// [extendedLocation] Extended Location
  /// [image] The details of MqttBridge Docker Image.
  /// [localBrokerConnection] The details for connecting with Local Broker.
  /// [location] The geo-location where the resource lives
  /// [logLevel] The log level of the Bridge Connector instances.
  /// [mqName] Name of MQ resource
  /// [mqttBridgeConnectorName] Name of MQ mqttBridgeConnector resource
  /// [nodeTolerations] The Node Tolerations for the Bridge Connector pods.
  /// [protocol] The protocol to use for connecting with Brokers.
  /// [remoteBrokerConnection] The details for connecting with Remote Broker.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const MqttBridgeConnectorArgs({
    this.bridgeInstances,
    this.clientIdPrefix,
    required this.extendedLocation,
    required this.image,
    this.localBrokerConnection,
    this.location,
    this.logLevel,
    required this.mqName,
    this.mqttBridgeConnectorName,
    this.nodeTolerations,
    required this.protocol,
    required this.remoteBrokerConnection,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bridgeInstances': ?bridgeInstances,
      'clientIdPrefix': ?clientIdPrefix,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocationProperty, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'image': pulumi.Input.mapInputValue<ContainerImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'localBrokerConnection': ?pulumi.Input.mapOptionalInputValue<LocalBrokerConnectionSpec, Map<String, dynamic>>(localBrokerConnection, (value) => value.toMap()),
      'location': ?location,
      'logLevel': ?logLevel,
      'mqName': mqName,
      'mqttBridgeConnectorName': ?mqttBridgeConnectorName,
      'nodeTolerations': ?pulumi.Input.mapOptionalInputValue<NodeTolerations, Map<String, dynamic>>(nodeTolerations, (value) => value.toMap()),
      'protocol': protocol,
      'remoteBrokerConnection': pulumi.Input.mapInputValue<MqttBridgeRemoteBrokerConnectionSpec, Map<String, dynamic>>(remoteBrokerConnection, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory MqttBridgeConnectorArgs.fromMap(Map<String, dynamic> map) {
    return MqttBridgeConnectorArgs(
      bridgeInstances: (() { final guardedValue = map['bridgeInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      clientIdPrefix: (() { final guardedValue = map['clientIdPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocationProperty.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      image: pulumi.Input.fromValue(ContainerImage.fromMap((map['image']! as Map).cast<String, dynamic>())),
      localBrokerConnection: (() { final guardedValue = map['localBrokerConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalBrokerConnectionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mqName: pulumi.Input.fromValue(map['mqName'] as String),
      mqttBridgeConnectorName: (() { final guardedValue = map['mqttBridgeConnectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeTolerations: (() { final guardedValue = map['nodeTolerations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeTolerations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: pulumi.Input.fromValue(map['protocol']),
      remoteBrokerConnection: pulumi.Input.fromValue(MqttBridgeRemoteBrokerConnectionSpec.fromMap((map['remoteBrokerConnection']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
