// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_system_topic_event_subscription_delivery_attributes_args_doc}
/// Arguments for getSystemTopicEventSubscriptionDeliveryAttributes.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_system_topic_event_subscription_delivery_attributes_args_doc}
class GetSystemTopicEventSubscriptionDeliveryAttributesArgs {
  /// Name of the event subscription.
  final pulumi.Input<String> eventSubscriptionName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the system topic.
  final pulumi.Input<String> systemTopicName;

  /// Creates a new [GetSystemTopicEventSubscriptionDeliveryAttributesArgs].
  /// [eventSubscriptionName] Name of the event subscription.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [systemTopicName] Name of the system topic.
  GetSystemTopicEventSubscriptionDeliveryAttributesArgs({
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

  factory GetSystemTopicEventSubscriptionDeliveryAttributesArgs.fromMap(Map<String, dynamic> map) {
    return GetSystemTopicEventSubscriptionDeliveryAttributesArgs(
      eventSubscriptionName: map['eventSubscriptionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      systemTopicName: map['systemTopicName'] as String,
    );
  }
}

