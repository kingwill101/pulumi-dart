// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_partner_topic_event_subscription_full_url_args_doc}
/// Arguments for getPartnerTopicEventSubscriptionFullUrl.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_partner_topic_event_subscription_full_url_args_doc}
class GetPartnerTopicEventSubscriptionFullUrlArgs {
  /// Name of the event subscription.
  final pulumi.Input<String> eventSubscriptionName;
  /// Name of the partner topic.
  final pulumi.Input<String> partnerTopicName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPartnerTopicEventSubscriptionFullUrlArgs].
  /// [eventSubscriptionName] Name of the event subscription.
  /// [partnerTopicName] Name of the partner topic.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  GetPartnerTopicEventSubscriptionFullUrlArgs({
    required pulumi.Output<String> eventSubscriptionName,
    required pulumi.Output<String> partnerTopicName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      eventSubscriptionName = pulumi.Input.asInput<String>(eventSubscriptionName),
      partnerTopicName = pulumi.Input.asInput<String>(partnerTopicName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSubscriptionName': eventSubscriptionName,
      'partnerTopicName': partnerTopicName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPartnerTopicEventSubscriptionFullUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerTopicEventSubscriptionFullUrlArgs(
      eventSubscriptionName: pulumi.Output.create<String>(map['eventSubscriptionName'] as String),
      partnerTopicName: pulumi.Output.create<String>(map['partnerTopicName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

