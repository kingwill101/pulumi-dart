// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_cosmos_dbsql_api_properties.dart';
import 'routing_event_hub_properties.dart';
import 'routing_service_bus_queue_endpoint_properties.dart';
import 'routing_service_bus_topic_endpoint_properties.dart';
import 'routing_storage_container_properties.dart';

/// The properties related to the custom endpoints to which your IoT hub routes messages based on the routing rules. A maximum of 10 custom endpoints are allowed across all endpoint types for paid hubs and only 1 custom endpoint is allowed across all endpoint types for free hubs.
class RoutingEndpoints {
  /// The list of Cosmos DB container endpoints that IoT hub routes messages to, based on the routing rules.
  final pulumi.Input<List<RoutingCosmosDBSqlApiProperties>>? cosmosDBSqlContainers;
  /// The list of Event Hubs endpoints that IoT hub routes messages to, based on the routing rules. This list does not include the built-in Event Hubs endpoint.
  final pulumi.Input<List<RoutingEventHubProperties>>? eventHubs;
  /// The list of Service Bus queue endpoints that IoT hub routes the messages to, based on the routing rules.
  final pulumi.Input<List<RoutingServiceBusQueueEndpointProperties>>? serviceBusQueues;
  /// The list of Service Bus topic endpoints that the IoT hub routes the messages to, based on the routing rules.
  final pulumi.Input<List<RoutingServiceBusTopicEndpointProperties>>? serviceBusTopics;
  /// The list of storage container endpoints that IoT hub routes messages to, based on the routing rules.
  final pulumi.Input<List<RoutingStorageContainerProperties>>? storageContainers;

  /// Creates a new [RoutingEndpoints].
  /// [cosmosDBSqlContainers] The list of Cosmos DB container endpoints that IoT hub routes messages to, based on the routing rules.
  /// [eventHubs] The list of Event Hubs endpoints that IoT hub routes messages to, based on the routing rules. This list does not include the built-in Event Hubs endpoint.
  /// [serviceBusQueues] The list of Service Bus queue endpoints that IoT hub routes the messages to, based on the routing rules.
  /// [serviceBusTopics] The list of Service Bus topic endpoints that the IoT hub routes the messages to, based on the routing rules.
  /// [storageContainers] The list of storage container endpoints that IoT hub routes messages to, based on the routing rules.
  RoutingEndpoints({
    this.cosmosDBSqlContainers,
    this.eventHubs,
    this.serviceBusQueues,
    this.serviceBusTopics,
    this.storageContainers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosDBSqlContainers': ?pulumi.Input.mapOptionalInputValue<List<RoutingCosmosDBSqlApiProperties>, List<Map<String, dynamic>>>(cosmosDBSqlContainers, (value) => pulumi.Input.encodeList<RoutingCosmosDBSqlApiProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventHubs': ?pulumi.Input.mapOptionalInputValue<List<RoutingEventHubProperties>, List<Map<String, dynamic>>>(eventHubs, (value) => pulumi.Input.encodeList<RoutingEventHubProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceBusQueues': ?pulumi.Input.mapOptionalInputValue<List<RoutingServiceBusQueueEndpointProperties>, List<Map<String, dynamic>>>(serviceBusQueues, (value) => pulumi.Input.encodeList<RoutingServiceBusQueueEndpointProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceBusTopics': ?pulumi.Input.mapOptionalInputValue<List<RoutingServiceBusTopicEndpointProperties>, List<Map<String, dynamic>>>(serviceBusTopics, (value) => pulumi.Input.encodeList<RoutingServiceBusTopicEndpointProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageContainers': ?pulumi.Input.mapOptionalInputValue<List<RoutingStorageContainerProperties>, List<Map<String, dynamic>>>(storageContainers, (value) => pulumi.Input.encodeList<RoutingStorageContainerProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RoutingEndpoints.fromMap(Map<String, dynamic> map) {
    return RoutingEndpoints(
      cosmosDBSqlContainers: map['cosmosDBSqlContainers'] == null ? null : (pulumi.Input.decodeList<RoutingCosmosDBSqlApiProperties>(map['cosmosDBSqlContainers'], (value) => RoutingCosmosDBSqlApiProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      eventHubs: map['eventHubs'] == null ? null : (pulumi.Input.decodeList<RoutingEventHubProperties>(map['eventHubs'], (value) => RoutingEventHubProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceBusQueues: map['serviceBusQueues'] == null ? null : (pulumi.Input.decodeList<RoutingServiceBusQueueEndpointProperties>(map['serviceBusQueues'], (value) => RoutingServiceBusQueueEndpointProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceBusTopics: map['serviceBusTopics'] == null ? null : (pulumi.Input.decodeList<RoutingServiceBusTopicEndpointProperties>(map['serviceBusTopics'], (value) => RoutingServiceBusTopicEndpointProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageContainers: map['storageContainers'] == null ? null : (pulumi.Input.decodeList<RoutingStorageContainerProperties>(map['storageContainers'], (value) => RoutingStorageContainerProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

