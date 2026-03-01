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
  GetSystemTopicEventSubscriptionArgs({
    required String eventSubscriptionName,
    required String resourceGroupName,
    required String systemTopicName,
  }) :
      eventSubscriptionName = pulumi.Input.asInput<String>(eventSubscriptionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      systemTopicName = pulumi.Input.asInput<String>(systemTopicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSubscriptionName': eventSubscriptionName,
      'resourceGroupName': resourceGroupName,
      'systemTopicName': systemTopicName,
    };
  }

  factory GetSystemTopicEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSystemTopicEventSubscriptionArgs(
      eventSubscriptionName: map['eventSubscriptionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      systemTopicName: map['systemTopicName'] as String,
    );
  }
}

