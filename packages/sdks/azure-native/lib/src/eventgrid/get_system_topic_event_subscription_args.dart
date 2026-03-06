// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_system_topic_event_subscription_args_doc}
/// Arguments for getSystemTopicEventSubscription.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_system_topic_event_subscription_args_doc}
class GetSystemTopicEventSubscriptionArgs {
  /// Name of the event subscription to be found.
  final pulumi.Input<String> eventSubscriptionName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the system topic.
  final pulumi.Input<String> systemTopicName;

  /// Creates a new [GetSystemTopicEventSubscriptionArgs].
  /// [eventSubscriptionName] Name of the event subscription to be found.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [systemTopicName] Name of the system topic.
  const GetSystemTopicEventSubscriptionArgs({
    required this.eventSubscriptionName,
    required this.resourceGroupName,
    required this.systemTopicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSubscriptionName': eventSubscriptionName,
      'resourceGroupName': resourceGroupName,
      'systemTopicName': systemTopicName,
    };
  }

  factory GetSystemTopicEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSystemTopicEventSubscriptionArgs(
      eventSubscriptionName: pulumi.Input.fromValue(map['eventSubscriptionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      systemTopicName: pulumi.Input.fromValue(map['systemTopicName'] as String),
    );
  }
}

