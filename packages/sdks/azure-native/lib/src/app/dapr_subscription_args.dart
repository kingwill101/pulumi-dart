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
  final pulumi.Input<DaprSubscriptionBulkSubscribeOptions?>? bulkSubscribe;
  /// Deadletter topic name
  final pulumi.Input<String?>? deadLetterTopic;
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// Subscription metadata
  final pulumi.Input<Map<String, String>?>? metadata;
  /// Name of the Dapr subscription.
  final pulumi.Input<String?>? name;
  /// Dapr PubSub component name
  final pulumi.Input<String?>? pubsubName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Subscription routes
  final pulumi.Input<DaprSubscriptionRoutes?>? routes;
  /// Application scopes to restrict the subscription to specific apps.
  final pulumi.Input<List<String>?>? scopes;
  /// Topic name
  final pulumi.Input<String?>? topic;

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
  const DaprSubscriptionArgs({
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
      bulkSubscribe: (() { final guardedValue = map['bulkSubscribe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaprSubscriptionBulkSubscribeOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deadLetterTopic: (() { final guardedValue = map['deadLetterTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubsubName: (() { final guardedValue = map['pubsubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaprSubscriptionRoutes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
