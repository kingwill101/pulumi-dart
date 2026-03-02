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
      dataLakeConnectorName: map['dataLakeConnectorName'] == null ? null : (map['dataLakeConnectorName']! as String).input(),
      databaseFormat: (map['databaseFormat'] as String).input(),
      extendedLocation: (ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      image: (ContainerImage.fromMap((map['image'] as Map).cast<String, dynamic>())).input(),
      instances: map['instances'] == null ? null : (map['instances']! as int).input(),
      localBrokerConnection: map['localBrokerConnection'] == null ? null : (LocalBrokerConnectionSpec.fromMap((map['localBrokerConnection']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      logLevel: map['logLevel'] == null ? null : (map['logLevel']! as String).input(),
      mqName: (map['mqName'] as String).input(),
      nodeTolerations: map['nodeTolerations'] == null ? null : (NodeTolerations.fromMap((map['nodeTolerations']! as Map).cast<String, dynamic>())).input(),
      protocol: (map['protocol'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      target: (DataLakeTargetStorage.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

