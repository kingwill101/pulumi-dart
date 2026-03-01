// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_domain_topic_event_subscription_delivery_attributes_args_doc}
/// Arguments for getDomainTopicEventSubscriptionDeliveryAttributes.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_domain_topic_event_subscription_delivery_attributes_args_doc}
class GetDomainTopicEventSubscriptionDeliveryAttributesArgs {
  /// Name of the top level domain.
  final pulumi.Input<String> domainName;
  /// Name of the event subscription.
  final pulumi.Input<String> eventSubscriptionName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the domain topic.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetDomainTopicEventSubscriptionDeliveryAttributesArgs].
  /// [domainName] Name of the top level domain.
  /// [eventSubscriptionName] Name of the event subscription.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicName] Name of the domain topic.
  GetDomainTopicEventSubscriptionDeliveryAttributesArgs({
    required String domainName,
    required String eventSubscriptionName,
    required String resourceGroupName,
    required String topicName,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      eventSubscriptionName = pulumi.Input.asInput<String>(eventSubscriptionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'eventSubscriptionName': eventSubscriptionName,
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory GetDomainTopicEventSubscriptionDeliveryAttributesArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainTopicEventSubscriptionDeliveryAttributesArgs(
      domainName: map['domainName'] as String,
      eventSubscriptionName: map['eventSubscriptionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      topicName: map['topicName'] as String,
    );
  }
}

