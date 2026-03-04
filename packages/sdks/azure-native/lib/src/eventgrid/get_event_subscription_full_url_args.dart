// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_event_subscription_full_url_args_doc}
/// Arguments for getEventSubscriptionFullUrl.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_event_subscription_full_url_args_doc}
class GetEventSubscriptionFullUrlArgs {
  /// Name of the event subscription.
  final pulumi.Input<String> eventSubscriptionName;

  /// The scope of the event subscription. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace, or an EventGrid topic. For example, use '/subscriptions/{subscriptionId}/' for a subscription, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for a resource group, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}' for a resource, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}' for an EventGrid topic.
  final pulumi.Input<String> scope;

  /// Creates a new [GetEventSubscriptionFullUrlArgs].
  /// [eventSubscriptionName] Name of the event subscription.
  /// [scope] The scope of the event subscription. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace, or an EventGrid topic. For example, use '/subscriptions/{subscriptionId}/' for a subscription, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for a resource group, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}' for a resource, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}' for an EventGrid topic.
  GetEventSubscriptionFullUrlArgs({
    required this.eventSubscriptionName,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSubscriptionName': eventSubscriptionName,
      'scope': scope,
    };
  }

  factory GetEventSubscriptionFullUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetEventSubscriptionFullUrlArgs(
      eventSubscriptionName: pulumi.Input.fromValue(
        map['eventSubscriptionName'] as String,
      ),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
