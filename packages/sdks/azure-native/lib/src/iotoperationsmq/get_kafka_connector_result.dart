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
  final String azureApiVersion;
  /// The client id prefix of the dynamically generated client ids.
  final String? clientIdPrefix;
  /// Extended Location
  final ExtendedLocationPropertyResponse extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The details of KafkaConnector Docker Image.
  final ContainerImageResponse? image;
  /// The number of KafkaConnector pods to spin up.
  final int? instances;
  /// The details for connecting with Remote Kafka Broker.
  final KafkaRemoteBrokerConnectionSpecResponse kafkaConnection;
  /// The details for connecting with Local Broker.
  final LocalBrokerConnectionSpecResponse? localBrokerConnection;
  /// The geo-location where the resource lives
  final String location;
  /// The log level of the Bridge Connector instances.
  final String? logLevel;
  /// The name of the resource
  final String name;
  /// The Node Tolerations for the Bridge Connector pods.
  final NodeTolerationsResponse? nodeTolerations;
  /// The status of the last operation.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
    required this.azureApiVersion,
    this.clientIdPrefix,
    required this.extendedLocation,
    required this.id,
    this.image,
    this.instances,
    required this.kafkaConnection,
    this.localBrokerConnection,
    required this.location,
    this.logLevel,
    required this.name,
    this.nodeTolerations,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'clientIdPrefix': ?clientIdPrefix,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'image': ?image == null ? null : image!.toMap(),
      'instances': ?instances,
      'kafkaConnection': kafkaConnection.toMap(),
      'localBrokerConnection': ?localBrokerConnection == null ? null : localBrokerConnection!.toMap(),
      'location': location,
      'logLevel': ?logLevel,
      'name': name,
      'nodeTolerations': ?nodeTolerations == null ? null : nodeTolerations!.toMap(),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetKafkaConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetKafkaConnectorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clientIdPrefix: map['clientIdPrefix'] == null ? null : map['clientIdPrefix']! as String,
      extendedLocation: ExtendedLocationPropertyResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      image: map['image'] == null ? null : ContainerImageResponse.fromMap((map['image']! as Map).cast<String, dynamic>()),
      instances: map['instances'] == null ? null : map['instances']! as int,
      kafkaConnection: KafkaRemoteBrokerConnectionSpecResponse.fromMap((map['kafkaConnection'] as Map).cast<String, dynamic>()),
      localBrokerConnection: map['localBrokerConnection'] == null ? null : LocalBrokerConnectionSpecResponse.fromMap((map['localBrokerConnection']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      logLevel: map['logLevel'] == null ? null : map['logLevel']! as String,
      name: map['name'] as String,
      nodeTolerations: map['nodeTolerations'] == null ? null : NodeTolerationsResponse.fromMap((map['nodeTolerations']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

