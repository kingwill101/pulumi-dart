// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_property_response.dart';
import 'kafka_routes_response.dart';
import 'kafka_topic_map_batching_response.dart';
import 'system_data_response.dart';

/// Result data returned by getKafkaConnectorTopicMap.
class GetKafkaConnectorTopicMapResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The batching settings for kafka messages.
  final KafkaTopicMapBatchingResponse? batching;
  /// The compression to use for kafka messages.
  final String? compression;
  /// The flag to copy Mqtt properties.
  final String? copyMqttProperties;
  /// Extended Location
  final ExtendedLocationPropertyResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The kafkaConnector CRD it refers to.
  final String? kafkaConnectorRef;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The partition to use for Kafka.
  final String? partitionKeyProperty;
  /// The partition strategy to use for Kafka.
  final String? partitionStrategy;
  /// The status of the last operation.
  final String? provisioningState;
  /// The route details for Kafka connector.
  final List<KafkaRoutesResponse>? routes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  GetKafkaConnectorTopicMapResult({
    this.azureApiVersion,
    this.batching,
    String? compression,
    this.copyMqttProperties,
    this.extendedLocation,
    this.id,
    this.kafkaConnectorRef,
    this.location,
    this.name,
    this.partitionKeyProperty,
    String? partitionStrategy,
    this.provisioningState,
    this.routes,
    this.systemData,
    this.tags,
    this.type,
  }) : compression = compression ?? 'none', partitionStrategy = partitionStrategy ?? 'default';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'batching': ?batching?.toMap(),
      'compression': ?compression,
      'copyMqttProperties': ?copyMqttProperties,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'kafkaConnectorRef': ?kafkaConnectorRef,
      'location': ?location,
      'name': ?name,
      'partitionKeyProperty': ?partitionKeyProperty,
      'partitionStrategy': ?partitionStrategy,
      'provisioningState': ?provisioningState,
      'routes': ?(() { final guardedValue = routes; if (guardedValue == null) return null; return pulumi.Input.encodeList<KafkaRoutesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetKafkaConnectorTopicMapResult.fromMap(Map<String, dynamic> map) {
    return GetKafkaConnectorTopicMapResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      batching: (() { final guardedValue = map['batching']; if (guardedValue == null) return null; return KafkaTopicMapBatchingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      copyMqttProperties: (() { final guardedValue = map['copyMqttProperties']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kafkaConnectorRef: (() { final guardedValue = map['kafkaConnectorRef']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partitionKeyProperty: (() { final guardedValue = map['partitionKeyProperty']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partitionStrategy: (() { final guardedValue = map['partitionStrategy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<KafkaRoutesResponse>(guardedValue, (value) => KafkaRoutesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
