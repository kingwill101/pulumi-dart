// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_topic_event_subscription_args_doc}
/// Arguments for getTopicEventSubscription.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_topic_event_subscription_args_doc}
class GetTopicEventSubscriptionArgs {
  /// Name of the event subscription to be found.
  final pulumi.Input<String> eventSubscriptionName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the topic.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetTopicEventSubscriptionArgs].
  /// [eventSubscriptionName] Name of the event subscription to be found.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicName] Name of the topic.
  GetTopicEventSubscriptionArgs({
    required pulumi.Output<String> eventSubscriptionName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> topicName,
  }) :
      eventSubscriptionName = pulumi.Input.asInput<String>(eventSubscriptionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSubscriptionName': eventSubscriptionName,
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory GetTopicEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicEventSubscriptionArgs(
      eventSubscriptionName: pulumi.Output.create<String>(map['eventSubscriptionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      topicName: pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

