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
  const GetTopicEventSubscriptionArgs({
    required this.eventSubscriptionName,
    required this.resourceGroupName,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSubscriptionName': eventSubscriptionName,
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory GetTopicEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicEventSubscriptionArgs(
      eventSubscriptionName: pulumi.Input.fromValue(map['eventSubscriptionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}
