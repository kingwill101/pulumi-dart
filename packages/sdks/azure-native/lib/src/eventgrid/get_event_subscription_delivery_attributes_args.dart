// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_event_subscription_delivery_attributes_args_doc}
/// Arguments for getEventSubscriptionDeliveryAttributes.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_event_subscription_delivery_attributes_args_doc}
class GetEventSubscriptionDeliveryAttributesArgs {
  /// Name of the event subscription.
  final pulumi.Input<String> eventSubscriptionName;
  /// The scope of the event subscription. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace, or an EventGrid topic. For example, use '/subscriptions/{subscriptionId}/' for a subscription, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for a resource group, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}' for a resource, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}' for an EventGrid topic.
  final pulumi.Input<String> scope;

  /// Creates a new [GetEventSubscriptionDeliveryAttributesArgs].
  /// [eventSubscriptionName] Name of the event subscription.
  /// [scope] The scope of the event subscription. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace, or an EventGrid topic. For example, use '/subscriptions/{subscriptionId}/' for a subscription, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for a resource group, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}' for a resource, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}' for an EventGrid topic.
  GetEventSubscriptionDeliveryAttributesArgs({
    required this.eventSubscriptionName,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSubscriptionName': eventSubscriptionName,
      'scope': scope,
    };
  }

  factory GetEventSubscriptionDeliveryAttributesArgs.fromMap(Map<String, dynamic> map) {
    return GetEventSubscriptionDeliveryAttributesArgs(
      eventSubscriptionName: (map['eventSubscriptionName'] as String).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

