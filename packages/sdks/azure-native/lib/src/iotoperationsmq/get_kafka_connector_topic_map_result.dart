// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_property_response.dart';
import 'kafka_routes_response.dart';
import 'kafka_topic_map_batching_response.dart';
import 'system_data_response.dart';

/// Result data returned by getKafkaConnectorTopicMap.
class GetKafkaConnectorTopicMapResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The batching settings for kafka messages.
  final KafkaTopicMapBatchingResponse? batching;
  /// The compression to use for kafka messages.
  final String? compression;
  /// The flag to copy Mqtt properties.
  final String? copyMqttProperties;
  /// Extended Location
  final ExtendedLocationPropertyResponse extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The kafkaConnector CRD it refers to.
  final String kafkaConnectorRef;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The partition to use for Kafka.
  final String? partitionKeyProperty;
  /// The partition strategy to use for Kafka.
  final String? partitionStrategy;
  /// The status of the last operation.
  final String provisioningState;
  /// The route details for Kafka connector.
  final List<KafkaRoutesResponse> routes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetKafkaConnectorTopicMapResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [batching] The batching settings for kafka messages.
  /// [compression] The compression to use for kafka messages.
  /// [copyMqttProperties] The flag to copy Mqtt properties.
  /// [extendedLocation] Extended Location
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kafkaConnectorRef] The kafkaConnector CRD it refers to.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [partitionKeyProperty] The partition to use for Kafka.
  /// [partitionStrategy] The partition strategy to use for Kafka.
  /// [provisioningState] The status of the last operation.
  /// [routes] The route details for Kafka connector.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetKafkaConnectorTopicMapResult({
    required this.azureApiVersion,
    this.batching,
    this.compression,
    this.copyMqttProperties,
    required this.extendedLocation,
    required this.id,
    required this.kafkaConnectorRef,
    required this.location,
    required this.name,
    this.partitionKeyProperty,
    this.partitionStrategy,
    required this.provisioningState,
    required this.routes,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'batching': ?batching?.toMap(),
      'compression': ?compression,
      'copyMqttProperties': ?copyMqttProperties,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'kafkaConnectorRef': kafkaConnectorRef,
      'location': location,
      'name': name,
      'partitionKeyProperty': ?partitionKeyProperty,
      'partitionStrategy': ?partitionStrategy,
      'provisioningState': provisioningState,
      'routes': pulumi.Input.encodeList<KafkaRoutesResponse, Map<String, dynamic>>(routes, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetKafkaConnectorTopicMapResult.fromMap(Map<String, dynamic> map) {
    return GetKafkaConnectorTopicMapResult(
      azureApiVersion: map['azureApiVersion'] as String,
      batching: (() { final guardedValue = map['batching']; if (guardedValue == null) return null; return KafkaTopicMapBatchingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      copyMqttProperties: (() { final guardedValue = map['copyMqttProperties']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: ExtendedLocationPropertyResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      kafkaConnectorRef: map['kafkaConnectorRef'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      partitionKeyProperty: (() { final guardedValue = map['partitionKeyProperty']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partitionStrategy: (() { final guardedValue = map['partitionStrategy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      routes: pulumi.Input.decodeList<KafkaRoutesResponse>(map['routes']!, (value) => KafkaRoutesResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
