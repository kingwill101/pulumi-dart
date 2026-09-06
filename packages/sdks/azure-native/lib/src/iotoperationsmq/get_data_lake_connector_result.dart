// ignore_for_file: unused_element, unnecessary_cast

import 'container_image_response.dart';
import 'data_lake_target_storage_response.dart';
import 'extended_location_property_response.dart';
import 'local_broker_connection_spec_response.dart';
import 'node_tolerations_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDataLakeConnector.
class GetDataLakeConnectorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// DataLake database format to use.
  final String? databaseFormat;
  /// Extended Location
  final ExtendedLocationPropertyResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The details of DataLakeConnector Docker Image.
  final ContainerImageResponse? image;
  /// The number of DataLakeConnector pods to spin up.
  final int? instances;
  /// The details for connecting with Local Broker.
  final LocalBrokerConnectionSpecResponse? localBrokerConnection;
  /// The geo-location where the resource lives
  final String? location;
  /// The log level of the DataLake Connector instances.
  final String? logLevel;
  /// The name of the resource
  final String? name;
  /// The Node Tolerations for the DataLake Connector pods.
  final NodeTolerationsResponse? nodeTolerations;
  /// The protocol to use for connecting with Brokers.
  final String? protocol;
  /// The status of the last operation.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The protocol to use for connecting with Brokers. NOTE - Enum only storage is supported at at time.
  final DataLakeTargetStorageResponse? target;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetDataLakeConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [databaseFormat] DataLake database format to use.
  /// [extendedLocation] Extended Location
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [image] The details of DataLakeConnector Docker Image.
  /// [instances] The number of DataLakeConnector pods to spin up.
  /// [localBrokerConnection] The details for connecting with Local Broker.
  /// [location] The geo-location where the resource lives
  /// [logLevel] The log level of the DataLake Connector instances.
  /// [name] The name of the resource
  /// [nodeTolerations] The Node Tolerations for the DataLake Connector pods.
  /// [protocol] The protocol to use for connecting with Brokers.
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [target] The protocol to use for connecting with Brokers. NOTE - Enum only storage is supported at at time.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDataLakeConnectorResult({
    this.azureApiVersion,
    this.databaseFormat,
    this.extendedLocation,
    this.id,
    this.image,
    this.instances,
    this.localBrokerConnection,
    this.location,
    this.logLevel,
    this.name,
    this.nodeTolerations,
    this.protocol,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.target,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'databaseFormat': ?databaseFormat,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'image': ?image?.toMap(),
      'instances': ?instances,
      'localBrokerConnection': ?localBrokerConnection?.toMap(),
      'location': ?location,
      'logLevel': ?logLevel,
      'name': ?name,
      'nodeTolerations': ?nodeTolerations?.toMap(),
      'protocol': ?protocol,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'target': ?target?.toMap(),
      'type': ?type,
    };
  }

  factory GetDataLakeConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetDataLakeConnectorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseFormat: (() { final guardedValue = map['databaseFormat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return ContainerImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      localBrokerConnection: (() { final guardedValue = map['localBrokerConnection']; if (guardedValue == null) return null; return LocalBrokerConnectionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeTolerations: (() { final guardedValue = map['nodeTolerations']; if (guardedValue == null) return null; return NodeTolerationsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return DataLakeTargetStorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
