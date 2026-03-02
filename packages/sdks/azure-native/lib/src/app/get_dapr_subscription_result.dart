// ignore_for_file: unused_element, unnecessary_cast

import 'dapr_subscription_bulk_subscribe_options_response.dart';
import 'dapr_subscription_routes_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDaprSubscription.
class GetDaprSubscriptionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Bulk subscription options
  final DaprSubscriptionBulkSubscribeOptionsResponse? bulkSubscribe;
  /// Deadletter topic name
  final String? deadLetterTopic;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Subscription metadata
  final Map<String, String>? metadata;
  /// The name of the resource
  final String name;
  /// Dapr PubSub component name
  final String? pubsubName;
  /// Subscription routes
  final DaprSubscriptionRoutesResponse? routes;
  /// Application scopes to restrict the subscription to specific apps.
  final List<String>? scopes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Topic name
  final String? topic;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDaprSubscriptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bulkSubscribe] Bulk subscription options
  /// [deadLetterTopic] Deadletter topic name
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [metadata] Subscription metadata
  /// [name] The name of the resource
  /// [pubsubName] Dapr PubSub component name
  /// [routes] Subscription routes
  /// [scopes] Application scopes to restrict the subscription to specific apps.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [topic] Topic name
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDaprSubscriptionResult({
    required this.azureApiVersion,
    this.bulkSubscribe,
    this.deadLetterTopic,
    required this.id,
    this.metadata,
    required this.name,
    this.pubsubName,
    this.routes,
    this.scopes,
    required this.systemData,
    this.topic,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'bulkSubscribe': ?bulkSubscribe == null ? null : bulkSubscribe!.toMap(),
      'deadLetterTopic': ?deadLetterTopic,
      'id': id,
      'metadata': ?metadata,
      'name': name,
      'pubsubName': ?pubsubName,
      'routes': ?routes == null ? null : routes!.toMap(),
      'scopes': ?scopes,
      'systemData': systemData.toMap(),
      'topic': ?topic,
      'type': type,
    };
  }

  factory GetDaprSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetDaprSubscriptionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      bulkSubscribe: map['bulkSubscribe'] == null ? null : DaprSubscriptionBulkSubscribeOptionsResponse.fromMap((map['bulkSubscribe']! as Map).cast<String, dynamic>()),
      deadLetterTopic: map['deadLetterTopic'] == null ? null : map['deadLetterTopic']! as String,
      id: map['id'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata']! as Map).cast<String, String>(),
      name: map['name'] as String,
      pubsubName: map['pubsubName'] == null ? null : map['pubsubName']! as String,
      routes: map['routes'] == null ? null : DaprSubscriptionRoutesResponse.fromMap((map['routes']! as Map).cast<String, dynamic>()),
      scopes: map['scopes'] == null ? null : (map['scopes']! as List).cast<String>(),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      topic: map['topic'] == null ? null : map['topic']! as String,
      type: map['type'] as String,
    );
  }
}

