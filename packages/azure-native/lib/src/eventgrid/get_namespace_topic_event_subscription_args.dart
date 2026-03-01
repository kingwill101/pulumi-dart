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
    required String eventSubscriptionName,
    required String namespaceName,
    required String resourceGroupName,
    required String topicName,
  }) :
      eventSubscriptionName = pulumi.Input.asInput<String>(eventSubscriptionName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSubscriptionName': eventSubscriptionName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory GetNamespaceTopicEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceTopicEventSubscriptionArgs(
      eventSubscriptionName: map['eventSubscriptionName'] as String,
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      topicName: map['topicName'] as String,
    );
  }
}

