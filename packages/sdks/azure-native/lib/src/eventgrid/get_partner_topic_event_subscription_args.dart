// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_partner_topic_event_subscription_args_doc}
/// Arguments for getPartnerTopicEventSubscription.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_partner_topic_event_subscription_args_doc}
class GetPartnerTopicEventSubscriptionArgs {
  /// Name of the event subscription to be found.
  final pulumi.Input<String> eventSubscriptionName;
  /// Name of the partner topic.
  final pulumi.Input<String> partnerTopicName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPartnerTopicEventSubscriptionArgs].
  /// [eventSubscriptionName] Name of the event subscription to be found.
  /// [partnerTopicName] Name of the partner topic.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  const GetPartnerTopicEventSubscriptionArgs({
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

  factory GetPartnerTopicEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerTopicEventSubscriptionArgs(
      eventSubscriptionName: pulumi.Input.fromValue(map['eventSubscriptionName'] as String),
      partnerTopicName: pulumi.Input.fromValue(map['partnerTopicName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

