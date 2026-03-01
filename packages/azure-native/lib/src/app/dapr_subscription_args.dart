// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_subscription_bulk_subscribe_options.dart';
import 'dapr_subscription_routes.dart';

/// {@template pulumi_app_dapr_subscription_args_doc}
/// The set of arguments for DaprSubscription.
/// {@endtemplate}
/// {@macro pulumi_app_dapr_subscription_args_doc}
class DaprSubscriptionArgs {
  /// Bulk subscription options
  final pulumi.Input<DaprSubscriptionBulkSubscribeOptions>? bulkSubscribe;
  /// Deadletter topic name
  final pulumi.Input<String>? deadLetterTopic;
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// Subscription metadata
  final pulumi.Input<Map<String, String>>? metadata;
  /// Name of the Dapr subscription.
  final pulumi.Input<String>? name;
  /// Dapr PubSub component name
  final pulumi.Input<String>? pubsubName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Subscription routes
  final pulumi.Input<DaprSubscriptionRoutes>? routes;
  /// Application scopes to restrict the subscription to specific apps.
  final pulumi.Input<List<String>>? scopes;
  /// Topic name
  final pulumi.Input<String>? topic;

  /// Creates a new [DaprSubscriptionArgs].
  /// [bulkSubscribe] Bulk subscription options
  /// [deadLetterTopic] Deadletter topic name
  /// [environmentName] Name of the Managed Environment.
  /// [metadata] Subscription metadata
  /// [name] Name of the Dapr subscription.
  /// [pubsubName] Dapr PubSub component name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [routes] Subscription routes
  /// [scopes] Application scopes to restrict the subscription to specific apps.
  /// [topic] Topic name
  DaprSubscriptionArgs({
    DaprSubscriptionBulkSubscribeOptions? bulkSubscribe,
    String? deadLetterTopic,
    required String environmentName,
    Map<String, String>? metadata,
    String? name,
    String? pubsubName,
    required String resourceGroupName,
    DaprSubscriptionRoutes? routes,
    List<String>? scopes,
    String? topic,
  }) :
      bulkSubscribe = pulumi.Input.asOptionalInput<DaprSubscriptionBulkSubscribeOptions>(bulkSubscribe),
      deadLetterTopic = pulumi.Input.asOptionalInput<String>(deadLetterTopic),
      environmentName = pulumi.Input.asInput<String>(environmentName),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      pubsubName = pulumi.Input.asOptionalInput<String>(pubsubName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routes = pulumi.Input.asOptionalInput<DaprSubscriptionRoutes>(routes),
      scopes = pulumi.Input.asOptionalInput<List<String>>(scopes),
      topic = pulumi.Input.asOptionalInput<String>(topic);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bulkSubscribe': ?pulumi.Input.mapOptionalInputValue<DaprSubscriptionBulkSubscribeOptions, Map<String, dynamic>>(bulkSubscribe, (value) => value.toMap()),
      'deadLetterTopic': ?deadLetterTopic,
      'environmentName': environmentName,
      'metadata': ?metadata,
      'name': ?name,
      'pubsubName': ?pubsubName,
      'resourceGroupName': resourceGroupName,
      'routes': ?pulumi.Input.mapOptionalInputValue<DaprSubscriptionRoutes, Map<String, dynamic>>(routes, (value) => value.toMap()),
      'scopes': ?scopes,
      'topic': ?topic,
    };
  }

  factory DaprSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return DaprSubscriptionArgs(
      bulkSubscribe: map['bulkSubscribe'] == null ? null : DaprSubscriptionBulkSubscribeOptions.fromMap((map['bulkSubscribe'] as Map).cast<String, dynamic>()),
      deadLetterTopic: map['deadLetterTopic'] == null ? null : map['deadLetterTopic'] as String,
      environmentName: map['environmentName'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      pubsubName: map['pubsubName'] == null ? null : map['pubsubName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routes: map['routes'] == null ? null : DaprSubscriptionRoutes.fromMap((map['routes'] as Map).cast<String, dynamic>()),
      scopes: map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}

