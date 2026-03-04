// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_namespace_topic_event_subscription_args_doc}
/// Arguments for getNamespaceTopicEventSubscription.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_namespace_topic_event_subscription_args_doc}
class GetNamespaceTopicEventSubscriptionArgs {
  /// Name of the event subscription to be found.
  final pulumi.Input<String> eventSubscriptionName;

  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;

  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the namespace topic.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetNamespaceTopicEventSubscriptionArgs].
  /// [eventSubscriptionName] Name of the event subscription to be found.
  /// [namespaceName] Name of the namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicName] Name of the namespace topic.
  GetNamespaceTopicEventSubscriptionArgs({
    required this.eventSubscriptionName,
    required this.namespaceName,
    required this.resourceGroupName,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSubscriptionName': eventSubscriptionName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory GetNamespaceTopicEventSubscriptionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNamespaceTopicEventSubscriptionArgs(
      eventSubscriptionName: pulumi.Input.fromValue(
        map['eventSubscriptionName'] as String,
      ),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}
