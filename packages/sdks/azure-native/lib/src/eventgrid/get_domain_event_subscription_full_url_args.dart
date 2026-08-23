// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_domain_event_subscription_full_url_args_doc}
/// Arguments for getDomainEventSubscriptionFullUrl.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_domain_event_subscription_full_url_args_doc}
class GetDomainEventSubscriptionFullUrlArgs {
  /// Name of the domain topic.
  final pulumi.Input<String> domainName;
  /// Name of the event subscription.
  final pulumi.Input<String> eventSubscriptionName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDomainEventSubscriptionFullUrlArgs].
  /// [domainName] Name of the domain topic.
  /// [eventSubscriptionName] Name of the event subscription.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  const GetDomainEventSubscriptionFullUrlArgs({
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

  factory GetDomainEventSubscriptionFullUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainEventSubscriptionFullUrlArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      eventSubscriptionName: pulumi.Input.fromValue(map['eventSubscriptionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
