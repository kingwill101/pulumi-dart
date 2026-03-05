// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_cosmos_dbsql_api_properties_response.dart';
import 'routing_event_hub_properties_response.dart';
import 'routing_service_bus_queue_endpoint_properties_response.dart';
import 'routing_service_bus_topic_endpoint_properties_response.dart';
import 'routing_storage_container_properties_response.dart';

/// The properties related to the custom endpoints to which your IoT hub routes messages based on the routing rules. A maximum of 10 custom endpoints are allowed across all endpoint types for paid hubs and only 1 custom endpoint is allowed across all endpoint types for free hubs.
class RoutingEndpointsResponse {
  /// The list of Cosmos DB container endpoints that IoT hub routes messages to, based on the routing rules.
  final pulumi.Input<List<RoutingCosmosDBSqlApiPropertiesResponse>>? cosmosDBSqlContainers;
  /// The list of Event Hubs endpoints that IoT hub routes messages to, based on the routing rules. This list does not include the built-in Event Hubs endpoint.
  final pulumi.Input<List<RoutingEventHubPropertiesResponse>>? eventHubs;
  /// The list of Service Bus queue endpoints that IoT hub routes the messages to, based on the routing rules.
  final pulumi.Input<List<RoutingServiceBusQueueEndpointPropertiesResponse>>? serviceBusQueues;
  /// The list of Service Bus topic endpoints that the IoT hub routes the messages to, based on the routing rules.
  final pulumi.Input<List<RoutingServiceBusTopicEndpointPropertiesResponse>>? serviceBusTopics;
  /// The list of storage container endpoints that IoT hub routes messages to, based on the routing rules.
  final pulumi.Input<List<RoutingStorageContainerPropertiesResponse>>? storageContainers;

  /// Creates a new [RoutingEndpointsResponse].
  /// [cosmosDBSqlContainers] The list of Cosmos DB container endpoints that IoT hub routes messages to, based on the routing rules.
  /// [eventHubs] The list of Event Hubs endpoints that IoT hub routes messages to, based on the routing rules. This list does not include the built-in Event Hubs endpoint.
  /// [serviceBusQueues] The list of Service Bus queue endpoints that IoT hub routes the messages to, based on the routing rules.
  /// [serviceBusTopics] The list of Service Bus topic endpoints that the IoT hub routes the messages to, based on the routing rules.
  /// [storageContainers] The list of storage container endpoints that IoT hub routes messages to, based on the routing rules.
  RoutingEndpointsResponse({
    this.cosmosDBSqlContainers,
    this.eventHubs,
    this.serviceBusQueues,
    this.serviceBusTopics,
    this.storageContainers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosDBSqlContainers': ?pulumi.Input.mapOptionalInputValue<List<RoutingCosmosDBSqlApiPropertiesResponse>, List<Map<String, dynamic>>>(cosmosDBSqlContainers, (value) => pulumi.Input.encodeList<RoutingCosmosDBSqlApiPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventHubs': ?pulumi.Input.mapOptionalInputValue<List<RoutingEventHubPropertiesResponse>, List<Map<String, dynamic>>>(eventHubs, (value) => pulumi.Input.encodeList<RoutingEventHubPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceBusQueues': ?pulumi.Input.mapOptionalInputValue<List<RoutingServiceBusQueueEndpointPropertiesResponse>, List<Map<String, dynamic>>>(serviceBusQueues, (value) => pulumi.Input.encodeList<RoutingServiceBusQueueEndpointPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceBusTopics': ?pulumi.Input.mapOptionalInputValue<List<RoutingServiceBusTopicEndpointPropertiesResponse>, List<Map<String, dynamic>>>(serviceBusTopics, (value) => pulumi.Input.encodeList<RoutingServiceBusTopicEndpointPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageContainers': ?pulumi.Input.mapOptionalInputValue<List<RoutingStorageContainerPropertiesResponse>, List<Map<String, dynamic>>>(storageContainers, (value) => pulumi.Input.encodeList<RoutingStorageContainerPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RoutingEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return RoutingEndpointsResponse(
      cosmosDBSqlContainers: (() { final guardedValue = map['cosmosDBSqlContainers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoutingCosmosDBSqlApiPropertiesResponse>(guardedValue, (value) => RoutingCosmosDBSqlApiPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventHubs: (() { final guardedValue = map['eventHubs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoutingEventHubPropertiesResponse>(guardedValue, (value) => RoutingEventHubPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceBusQueues: (() { final guardedValue = map['serviceBusQueues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoutingServiceBusQueueEndpointPropertiesResponse>(guardedValue, (value) => RoutingServiceBusQueueEndpointPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceBusTopics: (() { final guardedValue = map['serviceBusTopics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoutingServiceBusTopicEndpointPropertiesResponse>(guardedValue, (value) => RoutingServiceBusTopicEndpointPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageContainers: (() { final guardedValue = map['storageContainers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoutingStorageContainerPropertiesResponse>(guardedValue, (value) => RoutingStorageContainerPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

