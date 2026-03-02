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
    this.bulkSubscribe,
    this.deadLetterTopic,
    required this.environmentName,
    this.metadata,
    this.name,
    this.pubsubName,
    required this.resourceGroupName,
    this.routes,
    this.scopes,
    this.topic,
  });

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
      bulkSubscribe: map['bulkSubscribe'] == null ? null : (DaprSubscriptionBulkSubscribeOptions.fromMap((map['bulkSubscribe']! as Map).cast<String, dynamic>())).input(),
      deadLetterTopic: map['deadLetterTopic'] == null ? null : (map['deadLetterTopic']! as String).input(),
      environmentName: (map['environmentName'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      pubsubName: map['pubsubName'] == null ? null : (map['pubsubName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routes: map['routes'] == null ? null : (DaprSubscriptionRoutes.fromMap((map['routes']! as Map).cast<String, dynamic>())).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes']! as List).cast<String>()).input(),
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
    );
  }
}

