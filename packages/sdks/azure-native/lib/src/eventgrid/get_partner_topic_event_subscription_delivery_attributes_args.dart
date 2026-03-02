// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_partner_topic_event_subscription_delivery_attributes_args_doc}
/// Arguments for getPartnerTopicEventSubscriptionDeliveryAttributes.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_partner_topic_event_subscription_delivery_attributes_args_doc}
class GetPartnerTopicEventSubscriptionDeliveryAttributesArgs {
  /// Name of the event subscription.
  final pulumi.Input<String> eventSubscriptionName;
  /// Name of the partner topic.
  final pulumi.Input<String> partnerTopicName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPartnerTopicEventSubscriptionDeliveryAttributesArgs].
  /// [eventSubscriptionName] Name of the event subscription.
  /// [partnerTopicName] Name of the partner topic.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  GetPartnerTopicEventSubscriptionDeliveryAttributesArgs({
    required this.eventSubscriptionName,
    required this.partnerTopicName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSubscriptionName': eventSubscriptionName,
      'partnerTopicName': partnerTopicName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPartnerTopicEventSubscriptionDeliveryAttributesArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerTopicEventSubscriptionDeliveryAttributesArgs(
      eventSubscriptionName: (map['eventSubscriptionName'] as String).input(),
      partnerTopicName: (map['partnerTopicName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

