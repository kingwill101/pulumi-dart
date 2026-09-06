// ignore_for_file: unused_element, unnecessary_cast

import 'container_image_response.dart';
import 'extended_location_property_response.dart';
import 'local_broker_connection_spec_response.dart';
import 'mqtt_bridge_remote_broker_connection_spec_response.dart';
import 'node_tolerations_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMqttBridgeConnector.
class GetMqttBridgeConnectorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The number of instances to deploy for a bridge rollout.
  final int? bridgeInstances;
  /// The client id prefix of the dynamically generated client ids.
  final String? clientIdPrefix;
  /// Extended Location
  final ExtendedLocationPropertyResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The details of MqttBridge Docker Image.
  final ContainerImageResponse? image;
  /// The details for connecting with Local Broker.
  final LocalBrokerConnectionSpecResponse? localBrokerConnection;
  /// The geo-location where the resource lives
  final String? location;
  /// The log level of the Bridge Connector instances.
  final String? logLevel;
  /// The name of the resource
  final String? name;
  /// The Node Tolerations for the Bridge Connector pods.
  final NodeTolerationsResponse? nodeTolerations;
  /// The protocol to use for connecting with Brokers.
  final String? protocol;
  /// The status of the last operation.
  final String? provisioningState;
  /// The details for connecting with Remote Broker.
  final MqttBridgeRemoteBrokerConnectionSpecResponse? remoteBrokerConnection;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetMqttBridgeConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bridgeInstances] The number of instances to deploy for a bridge rollout.
  /// [clientIdPrefix] The client id prefix of the dynamically generated client ids.
  /// [extendedLocation] Extended Location
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [image] The details of MqttBridge Docker Image.
  /// [localBrokerConnection] The details for connecting with Local Broker.
  /// [location] The geo-location where the resource lives
  /// [logLevel] The log level of the Bridge Connector instances.
  /// [name] The name of the resource
  /// [nodeTolerations] The Node Tolerations for the Bridge Connector pods.
  /// [protocol] The protocol to use for connecting with Brokers.
  /// [provisioningState] The status of the last operation.
  /// [remoteBrokerConnection] The details for connecting with Remote Broker.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetMqttBridgeConnectorResult({
    this.azureApiVersion,
    this.bridgeInstances,
    this.clientIdPrefix,
    this.extendedLocation,
    this.id,
    this.image,
    this.localBrokerConnection,
    this.location,
    this.logLevel,
    this.name,
    this.nodeTolerations,
    this.protocol,
    this.provisioningState,
    this.remoteBrokerConnection,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'bridgeInstances': ?bridgeInstances,
      'clientIdPrefix': ?clientIdPrefix,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'image': ?image?.toMap(),
      'localBrokerConnection': ?localBrokerConnection?.toMap(),
      'location': ?location,
      'logLevel': ?logLevel,
      'name': ?name,
      'nodeTolerations': ?nodeTolerations?.toMap(),
      'protocol': ?protocol,
      'provisioningState': ?provisioningState,
      'remoteBrokerConnection': ?remoteBrokerConnection?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetMqttBridgeConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetMqttBridgeConnectorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bridgeInstances: (() { final guardedValue = map['bridgeInstances']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      clientIdPrefix: (() { final guardedValue = map['clientIdPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return ContainerImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      localBrokerConnection: (() { final guardedValue = map['localBrokerConnection']; if (guardedValue == null) return null; return LocalBrokerConnectionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeTolerations: (() { final guardedValue = map['nodeTolerations']; if (guardedValue == null) return null; return NodeTolerationsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remoteBrokerConnection: (() { final guardedValue = map['remoteBrokerConnection']; if (guardedValue == null) return null; return MqttBridgeRemoteBrokerConnectionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
