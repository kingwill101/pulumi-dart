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
  const GetDomainEventSubscriptionDeliveryAttributesArgs({
    required this.domainName,
    required this.eventSubscriptionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'eventSubscriptionName': eventSubscriptionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDomainEventSubscriptionDeliveryAttributesArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainEventSubscriptionDeliveryAttributesArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      eventSubscriptionName: pulumi.Input.fromValue(map['eventSubscriptionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
