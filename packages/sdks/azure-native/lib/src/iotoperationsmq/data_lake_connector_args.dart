// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image.dart';
import 'data_lake_target_storage.dart';
import 'extended_location_property.dart';
import 'local_broker_connection_spec.dart';
import 'node_tolerations.dart';

/// {@template pulumi_iotoperationsmq_data_lake_connector_args_doc}
/// The set of arguments for DataLakeConnector.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_data_lake_connector_args_doc}
class DataLakeConnectorArgs {
  /// Name of MQ dataLakeConnector resource
  final pulumi.Input<String>? dataLakeConnectorName;
  /// DataLake database format to use.
  final pulumi.Input<String> databaseFormat;
  /// Extended Location
  final pulumi.Input<ExtendedLocationProperty> extendedLocation;
  /// The details of DataLakeConnector Docker Image.
  final pulumi.Input<ContainerImage> image;
  /// The number of DataLakeConnector pods to spin up.
  final pulumi.Input<int>? instances;
  /// The details for connecting with Local Broker.
  final pulumi.Input<LocalBrokerConnectionSpec>? localBrokerConnection;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The log level of the DataLake Connector instances.
  final pulumi.Input<String>? logLevel;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The Node Tolerations for the DataLake Connector pods.
  final pulumi.Input<NodeTolerations>? nodeTolerations;
  /// The protocol to use for connecting with Brokers.
  final pulumi.Input<String> protocol;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The protocol to use for connecting with Brokers. NOTE - Enum only storage is supported at at time.
  final pulumi.Input<DataLakeTargetStorage> target;

  /// Creates a new [DataLakeConnectorArgs].
  /// [dataLakeConnectorName] Name of MQ dataLakeConnector resource
  /// [databaseFormat] DataLake database format to use.
  /// [extendedLocation] Extended Location
  /// [image] The details of DataLakeConnector Docker Image.
  /// [instances] The number of DataLakeConnector pods to spin up.
  /// [localBrokerConnection] The details for connecting with Local Broker.
  /// [location] The geo-location where the resource lives
  /// [logLevel] The log level of the DataLake Connector instances.
  /// [mqName] Name of MQ resource
  /// [nodeTolerations] The Node Tolerations for the DataLake Connector pods.
  /// [protocol] The protocol to use for connecting with Brokers.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [target] The protocol to use for connecting with Brokers. NOTE - Enum only storage is supported at at time.
  DataLakeConnectorArgs({
    this.dataLakeConnectorName,
    required this.databaseFormat,
    required this.extendedLocation,
    required this.image,
    this.instances,
    this.localBrokerConnection,
    this.location,
    this.logLevel,
    required this.mqName,
    this.nodeTolerations,
    required this.protocol,
    required this.resourceGroupName,
    this.tags,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakeConnectorName': ?dataLakeConnectorName,
      'databaseFormat': databaseFormat,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocationProperty, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'image': pulumi.Input.mapInputValue<ContainerImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'instances': ?instances,
      'localBrokerConnection': ?pulumi.Input.mapOptionalInputValue<LocalBrokerConnectionSpec, Map<String, dynamic>>(localBrokerConnection, (value) => value.toMap()),
      'location': ?location,
      'logLevel': ?logLevel,
      'mqName': mqName,
      'nodeTolerations': ?pulumi.Input.mapOptionalInputValue<NodeTolerations, Map<String, dynamic>>(nodeTolerations, (value) => value.toMap()),
      'protocol': protocol,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'target': pulumi.Input.mapInputValue<DataLakeTargetStorage, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory DataLakeConnectorArgs.fromMap(Map<String, dynamic> map) {
    return DataLakeConnectorArgs(
      dataLakeConnectorName: (() { final guardedValue = map['dataLakeConnectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseFormat: pulumi.Input.fromValue(map['databaseFormat'] as String),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocationProperty.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      image: pulumi.Input.fromValue(ContainerImage.fromMap((map['image']! as Map).cast<String, dynamic>())),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      localBrokerConnection: (() { final guardedValue = map['localBrokerConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalBrokerConnectionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mqName: pulumi.Input.fromValue(map['mqName'] as String),
      nodeTolerations: (() { final guardedValue = map['nodeTolerations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeTolerations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      target: pulumi.Input.fromValue(DataLakeTargetStorage.fromMap((map['target']! as Map).cast<String, dynamic>())),
    );
  }
}

