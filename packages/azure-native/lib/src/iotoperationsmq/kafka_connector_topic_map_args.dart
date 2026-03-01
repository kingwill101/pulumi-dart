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
  KafkaConnectorTopicMapArgs({
    KafkaTopicMapBatching? batching,
    String? compression,
    String? copyMqttProperties,
    required ExtendedLocationProperty extendedLocation,
    required String kafkaConnectorName,
    required String kafkaConnectorRef,
    String? location,
    required String mqName,
    String? partitionKeyProperty,
    String? partitionStrategy,
    required String resourceGroupName,
    required List<KafkaRoutes> routes,
    Map<String, String>? tags,
    String? topicMapName,
  }) :
      batching = pulumi.Input.asOptionalInput<KafkaTopicMapBatching>(batching),
      compression = pulumi.Input.asOptionalInput<String>(compression),
      copyMqttProperties = pulumi.Input.asOptionalInput<String>(copyMqttProperties),
      extendedLocation = pulumi.Input.asInput<ExtendedLocationProperty>(extendedLocation),
      kafkaConnectorName = pulumi.Input.asInput<String>(kafkaConnectorName),
      kafkaConnectorRef = pulumi.Input.asInput<String>(kafkaConnectorRef),
      location = pulumi.Input.asOptionalInput<String>(location),
      mqName = pulumi.Input.asInput<String>(mqName),
      partitionKeyProperty = pulumi.Input.asOptionalInput<String>(partitionKeyProperty),
      partitionStrategy = pulumi.Input.asOptionalInput<String>(partitionStrategy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routes = pulumi.Input.asInput<List<KafkaRoutes>>(routes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topicMapName = pulumi.Input.asOptionalInput<String>(topicMapName);

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
      batching: map['batching'] == null ? null : KafkaTopicMapBatching.fromMap((map['batching'] as Map).cast<String, dynamic>()),
      compression: map['compression'] == null ? null : map['compression'] as String,
      copyMqttProperties: map['copyMqttProperties'] == null ? null : map['copyMqttProperties'] as String,
      extendedLocation: ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      kafkaConnectorName: map['kafkaConnectorName'] as String,
      kafkaConnectorRef: map['kafkaConnectorRef'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      mqName: map['mqName'] as String,
      partitionKeyProperty: map['partitionKeyProperty'] == null ? null : map['partitionKeyProperty'] as String,
      partitionStrategy: map['partitionStrategy'] == null ? null : map['partitionStrategy'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routes: pulumi.Input.decodeList<KafkaRoutes>(map['routes'], (value) => KafkaRoutes.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      topicMapName: map['topicMapName'] == null ? null : map['topicMapName'] as String,
    );
  }
}

