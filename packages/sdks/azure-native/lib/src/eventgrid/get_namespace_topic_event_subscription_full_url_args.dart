// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_namespace_topic_event_subscription_full_url_args_doc}
/// Arguments for getNamespaceTopicEventSubscriptionFullUrl.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_namespace_topic_event_subscription_full_url_args_doc}
class GetNamespaceTopicEventSubscriptionFullUrlArgs {
  /// Name of the event subscription.
  final pulumi.Input<String> eventSubscriptionName;
  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the namespace topic.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetNamespaceTopicEventSubscriptionFullUrlArgs].
  /// [eventSubscriptionName] Name of the event subscription.
  /// [namespaceName] Name of the namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicName] Name of the namespace topic.
  GetNamespaceTopicEventSubscriptionFullUrlArgs({
    required pulumi.Output<String> eventSubscriptionName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> topicName,
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

  factory GetNamespaceTopicEventSubscriptionFullUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceTopicEventSubscriptionFullUrlArgs(
      eventSubscriptionName: pulumi.Output.create<String>(map['eventSubscriptionName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      topicName: pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

