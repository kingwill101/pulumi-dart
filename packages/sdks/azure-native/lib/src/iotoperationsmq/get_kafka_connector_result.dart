// ignore_for_file: unused_element, unnecessary_cast

import 'container_image_response.dart';
import 'extended_location_property_response.dart';
import 'kafka_remote_broker_connection_spec_response.dart';
import 'local_broker_connection_spec_response.dart';
import 'node_tolerations_response.dart';
import 'system_data_response.dart';

/// Result data returned by getKafkaConnector.
class GetKafkaConnectorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The client id prefix of the dynamically generated client ids.
  final String? clientIdPrefix;
  /// Extended Location
  final ExtendedLocationPropertyResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The details of KafkaConnector Docker Image.
  final ContainerImageResponse? image;
  /// The number of KafkaConnector pods to spin up.
  final int? instances;
  /// The details for connecting with Remote Kafka Broker.
  final KafkaRemoteBrokerConnectionSpecResponse? kafkaConnection;
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
  /// The status of the last operation.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetKafkaConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientIdPrefix] The client id prefix of the dynamically generated client ids.
  /// [extendedLocation] Extended Location
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [image] The details of KafkaConnector Docker Image.
  /// [instances] The number of KafkaConnector pods to spin up.
  /// [kafkaConnection] The details for connecting with Remote Kafka Broker.
  /// [localBrokerConnection] The details for connecting with Local Broker.
  /// [location] The geo-location where the resource lives
  /// [logLevel] The log level of the Bridge Connector instances.
  /// [name] The name of the resource
  /// [nodeTolerations] The Node Tolerations for the Bridge Connector pods.
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetKafkaConnectorResult({
    this.azureApiVersion,
    this.clientIdPrefix,
    this.extendedLocation,
    this.id,
    this.image,
    this.instances,
    this.kafkaConnection,
    this.localBrokerConnection,
    this.location,
    String? logLevel,
    this.name,
    this.nodeTolerations,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  }) : logLevel = logLevel ?? 'info';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'clientIdPrefix': ?clientIdPrefix,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'image': ?image?.toMap(),
      'instances': ?instances,
      'kafkaConnection': ?kafkaConnection?.toMap(),
      'localBrokerConnection': ?localBrokerConnection?.toMap(),
      'location': ?location,
      'logLevel': ?logLevel,
      'name': ?name,
      'nodeTolerations': ?nodeTolerations?.toMap(),
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetKafkaConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetKafkaConnectorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientIdPrefix: (() { final guardedValue = map['clientIdPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return ContainerImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      kafkaConnection: (() { final guardedValue = map['kafkaConnection']; if (guardedValue == null) return null; return KafkaRemoteBrokerConnectionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      localBrokerConnection: (() { final guardedValue = map['localBrokerConnection']; if (guardedValue == null) return null; return LocalBrokerConnectionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeTolerations: (() { final guardedValue = map['nodeTolerations']; if (guardedValue == null) return null; return NodeTolerationsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
