// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_property.dart';
import 'kafka_routes.dart';
import 'kafka_topic_map_batching.dart';

/// {@template pulumi_iotoperationsmq_kafka_connector_topic_map_args_doc}
/// The set of arguments for KafkaConnectorTopicMap.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_kafka_connector_topic_map_args_doc}
class KafkaConnectorTopicMapArgs {
  /// The batching settings for kafka messages.
  final pulumi.Input<KafkaTopicMapBatching>? batching;
  /// The compression to use for kafka messages.
  final pulumi.Input<String>? compression;
  /// The flag to copy Mqtt properties.
  final pulumi.Input<String>? copyMqttProperties;
  /// Extended Location
  final pulumi.Input<ExtendedLocationProperty> extendedLocation;
  /// Name of MQ kafkaConnector resource
  final pulumi.Input<String> kafkaConnectorName;
  /// The kafkaConnector CRD it refers to.
  final pulumi.Input<String> kafkaConnectorRef;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The partition to use for Kafka.
  final pulumi.Input<String>? partitionKeyProperty;
  /// The partition strategy to use for Kafka.
  final pulumi.Input<String>? partitionStrategy;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The route details for Kafka connector.
  final pulumi.Input<List<KafkaRoutes>> routes;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of MQ kafka/topicMap resource
  final pulumi.Input<String>? topicMapName;

  /// Creates a new [KafkaConnectorTopicMapArgs].
  /// [batching] The batching settings for kafka messages.
  /// [compression] The compression to use for kafka messages.
  /// [copyMqttProperties] The flag to copy Mqtt properties.
  /// [extendedLocation] Extended Location
  /// [kafkaConnectorName] Name of MQ kafkaConnector resource
  /// [kafkaConnectorRef] The kafkaConnector CRD it refers to.
  /// [location] The geo-location where the resource lives
  /// [mqName] Name of MQ resource
  /// [partitionKeyProperty] The partition to use for Kafka.
  /// [partitionStrategy] The partition strategy to use for Kafka.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [routes] The route details for Kafka connector.
  /// [tags] Resource tags.
  /// [topicMapName] Name of MQ kafka/topicMap resource
  const KafkaConnectorTopicMapArgs({
    this.batching,
    this.compression,
    this.copyMqttProperties,
    required this.extendedLocation,
    required this.kafkaConnectorName,
    required this.kafkaConnectorRef,
    this.location,
    required this.mqName,
    this.partitionKeyProperty,
    this.partitionStrategy,
    required this.resourceGroupName,
    required this.routes,
    this.tags,
    this.topicMapName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batching': ?pulumi.Input.mapOptionalInputValue<KafkaTopicMapBatching, Map<String, dynamic>>(batching, (value) => value.toMap()),
      'compression': ?compression,
      'copyMqttProperties': ?copyMqttProperties,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocationProperty, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'kafkaConnectorName': kafkaConnectorName,
      'kafkaConnectorRef': kafkaConnectorRef,
      'location': ?location,
      'mqName': mqName,
      'partitionKeyProperty': ?partitionKeyProperty,
      'partitionStrategy': ?partitionStrategy,
      'resourceGroupName': resourceGroupName,
      'routes': pulumi.Input.mapInputValue<List<KafkaRoutes>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<KafkaRoutes, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'topicMapName': ?topicMapName,
    };
  }

  factory KafkaConnectorTopicMapArgs.fromMap(Map<String, dynamic> map) {
    return KafkaConnectorTopicMapArgs(
      batching: (() { final guardedValue = map['batching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KafkaTopicMapBatching.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyMqttProperties: (() { final guardedValue = map['copyMqttProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocationProperty.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      kafkaConnectorName: pulumi.Input.fromValue(map['kafkaConnectorName'] as String),
      kafkaConnectorRef: pulumi.Input.fromValue(map['kafkaConnectorRef'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mqName: pulumi.Input.fromValue(map['mqName'] as String),
      partitionKeyProperty: (() { final guardedValue = map['partitionKeyProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionStrategy: (() { final guardedValue = map['partitionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routes: pulumi.Input.fromValue(pulumi.Input.decodeList<KafkaRoutes>(map['routes']!, (value) => KafkaRoutes.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topicMapName: (() { final guardedValue = map['topicMapName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
