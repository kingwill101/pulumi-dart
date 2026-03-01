// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_topic_event_subscription_full_url_args_doc}
/// Arguments for getTopicEventSubscriptionFullUrl.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_topic_event_subscription_full_url_args_doc}
class GetTopicEventSubscriptionFullUrlArgs {
  /// Name of the event subscription.
  final pulumi.Input<String> eventSubscriptionName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the domain topic.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetTopicEventSubscriptionFullUrlArgs].
  /// [eventSubscriptionName] Name of the event subscription.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicName] Name of the domain topic.
  GetTopicEventSubscriptionFullUrlArgs({
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

  factory GetTopicEventSubscriptionFullUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicEventSubscriptionFullUrlArgs(
      eventSubscriptionName: pulumi.Output.create<String>(map['eventSubscriptionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      topicName: pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

