// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_domain_event_subscription_delivery_attributes_args_doc}
/// Arguments for getDomainEventSubscriptionDeliveryAttributes.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_domain_event_subscription_delivery_attributes_args_doc}
class GetDomainEventSubscriptionDeliveryAttributesArgs {
  /// Name of the domain.
  final pulumi.Input<String> domainName;
  /// Name of the event subscription.
  final pulumi.Input<String> eventSubscriptionName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDomainEventSubscriptionDeliveryAttributesArgs].
  /// [domainName] Name of the domain.
  /// [eventSubscriptionName] Name of the event subscription.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  GetDomainEventSubscriptionDeliveryAttributesArgs({
    required pulumi.Output<String> domainName,
    required pulumi.Output<String> eventSubscriptionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      eventSubscriptionName = pulumi.Input.asInput<String>(eventSubscriptionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'eventSubscriptionName': eventSubscriptionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDomainEventSubscriptionDeliveryAttributesArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainEventSubscriptionDeliveryAttributesArgs(
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      eventSubscriptionName: pulumi.Output.create<String>(map['eventSubscriptionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

