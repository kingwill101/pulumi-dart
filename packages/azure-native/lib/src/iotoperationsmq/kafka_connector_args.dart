// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image.dart';
import 'extended_location_property.dart';
import 'kafka_remote_broker_connection_spec.dart';
import 'local_broker_connection_spec.dart';
import 'node_tolerations.dart';

/// {@template pulumi_iotoperationsmq_kafka_connector_args_doc}
/// The set of arguments for KafkaConnector.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_kafka_connector_args_doc}
class KafkaConnectorArgs {
  /// The client id prefix of the dynamically generated client ids.
  final pulumi.Input<String>? clientIdPrefix;
  /// Extended Location
  final pulumi.Input<ExtendedLocationProperty> extendedLocation;
  /// The details of KafkaConnector Docker Image.
  final pulumi.Input<ContainerImage>? image;
  /// The number of KafkaConnector pods to spin up.
  final pulumi.Input<int>? instances;
  /// The details for connecting with Remote Kafka Broker.
  final pulumi.Input<KafkaRemoteBrokerConnectionSpec> kafkaConnection;
  /// Name of MQ kafkaConnector resource
  final pulumi.Input<String>? kafkaConnectorName;
  /// The details for connecting with Local Broker.
  final pulumi.Input<LocalBrokerConnectionSpec>? localBrokerConnection;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The log level of the Bridge Connector instances.
  final pulumi.Input<String>? logLevel;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The Node Tolerations for the Bridge Connector pods.
  final pulumi.Input<NodeTolerations>? nodeTolerations;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KafkaConnectorArgs].
  /// [clientIdPrefix] The client id prefix of the dynamically generated client ids.
  /// [extendedLocation] Extended Location
  /// [image] The details of KafkaConnector Docker Image.
  /// [instances] The number of KafkaConnector pods to spin up.
  /// [kafkaConnection] The details for connecting with Remote Kafka Broker.
  /// [kafkaConnectorName] Name of MQ kafkaConnector resource
  /// [localBrokerConnection] The details for connecting with Local Broker.
  /// [location] The geo-location where the resource lives
  /// [logLevel] The log level of the Bridge Connector instances.
  /// [mqName] Name of MQ resource
  /// [nodeTolerations] The Node Tolerations for the Bridge Connector pods.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  KafkaConnectorArgs({
    String? clientIdPrefix,
    required ExtendedLocationProperty extendedLocation,
    ContainerImage? image,
    int? instances,
    required KafkaRemoteBrokerConnectionSpec kafkaConnection,
    String? kafkaConnectorName,
    LocalBrokerConnectionSpec? localBrokerConnection,
    String? location,
    String? logLevel,
    required String mqName,
    NodeTolerations? nodeTolerations,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      clientIdPrefix = pulumi.Input.asOptionalInput<String>(clientIdPrefix),
      extendedLocation = pulumi.Input.asInput<ExtendedLocationProperty>(extendedLocation),
      image = pulumi.Input.asOptionalInput<ContainerImage>(image),
      instances = pulumi.Input.asOptionalInput<int>(instances),
      kafkaConnection = pulumi.Input.asInput<KafkaRemoteBrokerConnectionSpec>(kafkaConnection),
      kafkaConnectorName = pulumi.Input.asOptionalInput<String>(kafkaConnectorName),
      localBrokerConnection = pulumi.Input.asOptionalInput<LocalBrokerConnectionSpec>(localBrokerConnection),
      location = pulumi.Input.asOptionalInput<String>(location),
      logLevel = pulumi.Input.asOptionalInput<String>(logLevel),
      mqName = pulumi.Input.asInput<String>(mqName),
      nodeTolerations = pulumi.Input.asOptionalInput<NodeTolerations>(nodeTolerations),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIdPrefix': ?clientIdPrefix,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocationProperty, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<ContainerImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'instances': ?instances,
      'kafkaConnection': pulumi.Input.mapInputValue<KafkaRemoteBrokerConnectionSpec, Map<String, dynamic>>(kafkaConnection, (value) => value.toMap()),
      'kafkaConnectorName': ?kafkaConnectorName,
      'localBrokerConnection': ?pulumi.Input.mapOptionalInputValue<LocalBrokerConnectionSpec, Map<String, dynamic>>(localBrokerConnection, (value) => value.toMap()),
      'location': ?location,
      'logLevel': ?logLevel,
      'mqName': mqName,
      'nodeTolerations': ?pulumi.Input.mapOptionalInputValue<NodeTolerations, Map<String, dynamic>>(nodeTolerations, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory KafkaConnectorArgs.fromMap(Map<String, dynamic> map) {
    return KafkaConnectorArgs(
      clientIdPrefix: map['clientIdPrefix'] == null ? null : map['clientIdPrefix'] as String,
      extendedLocation: ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      image: map['image'] == null ? null : ContainerImage.fromMap((map['image'] as Map).cast<String, dynamic>()),
      instances: map['instances'] == null ? null : map['instances'] as int,
      kafkaConnection: KafkaRemoteBrokerConnectionSpec.fromMap((map['kafkaConnection'] as Map).cast<String, dynamic>()),
      kafkaConnectorName: map['kafkaConnectorName'] == null ? null : map['kafkaConnectorName'] as String,
      localBrokerConnection: map['localBrokerConnection'] == null ? null : LocalBrokerConnectionSpec.fromMap((map['localBrokerConnection'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      logLevel: map['logLevel'] == null ? null : map['logLevel'] as String,
      mqName: map['mqName'] as String,
      nodeTolerations: map['nodeTolerations'] == null ? null : NodeTolerations.fromMap((map['nodeTolerations'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

