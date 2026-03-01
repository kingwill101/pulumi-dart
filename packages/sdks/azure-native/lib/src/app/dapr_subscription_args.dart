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
    pulumi.Output<DaprSubscriptionBulkSubscribeOptions>? bulkSubscribe,
    pulumi.Output<String>? deadLetterTopic,
    required pulumi.Output<String> environmentName,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pubsubName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<DaprSubscriptionRoutes>? routes,
    pulumi.Output<List<String>>? scopes,
    pulumi.Output<String>? topic,
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
      bulkSubscribe: map['bulkSubscribe'] == null ? null : pulumi.Output.create<DaprSubscriptionBulkSubscribeOptions>(DaprSubscriptionBulkSubscribeOptions.fromMap((map['bulkSubscribe'] as Map).cast<String, dynamic>())),
      deadLetterTopic: map['deadLetterTopic'] == null ? null : pulumi.Output.create<String>(map['deadLetterTopic'] as String),
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pubsubName: map['pubsubName'] == null ? null : pulumi.Output.create<String>(map['pubsubName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routes: map['routes'] == null ? null : pulumi.Output.create<DaprSubscriptionRoutes>(DaprSubscriptionRoutes.fromMap((map['routes'] as Map).cast<String, dynamic>())),
      scopes: map['scopes'] == null ? null : pulumi.Output.create<List<String>>((map['scopes'] as List).cast<String>()),
      topic: map['topic'] == null ? null : pulumi.Output.create<String>(map['topic'] as String),
    );
  }
}

