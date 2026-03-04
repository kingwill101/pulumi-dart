// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_system_topic_event_subscription_full_url_args_doc}
/// Arguments for getSystemTopicEventSubscriptionFullUrl.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_system_topic_event_subscription_full_url_args_doc}
class GetSystemTopicEventSubscriptionFullUrlArgs {
  /// Name of the event subscription.
  final pulumi.Input<String> eventSubscriptionName;

  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the system topic.
  final pulumi.Input<String> systemTopicName;

  /// Creates a new [GetSystemTopicEventSubscriptionFullUrlArgs].
  /// [eventSubscriptionName] Name of the event subscription.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [systemTopicName] Name of the system topic.
  GetSystemTopicEventSubscriptionFullUrlArgs({
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

  factory GetSystemTopicEventSubscriptionFullUrlArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSystemTopicEventSubscriptionFullUrlArgs(
      eventSubscriptionName: pulumi.Input.fromValue(
        map['eventSubscriptionName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      systemTopicName: pulumi.Input.fromValue(map['systemTopicName'] as String),
    );
  }
}
