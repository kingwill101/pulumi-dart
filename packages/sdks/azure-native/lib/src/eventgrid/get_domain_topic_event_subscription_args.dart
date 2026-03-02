// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_domain_topic_event_subscription_args_doc}
/// Arguments for getDomainTopicEventSubscription.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_domain_topic_event_subscription_args_doc}
class GetDomainTopicEventSubscriptionArgs {
  /// Name of the top level domain.
  final pulumi.Input<String> domainName;
  /// Name of the event subscription to be found.
  final pulumi.Input<String> eventSubscriptionName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the domain topic.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetDomainTopicEventSubscriptionArgs].
  /// [domainName] Name of the top level domain.
  /// [eventSubscriptionName] Name of the event subscription to be found.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicName] Name of the domain topic.
  GetDomainTopicEventSubscriptionArgs({
    required this.domainName,
    required this.eventSubscriptionName,
    required this.resourceGroupName,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'eventSubscriptionName': eventSubscriptionName,
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory GetDomainTopicEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainTopicEventSubscriptionArgs(
      domainName: (map['domainName'] as String).input(),
      eventSubscriptionName: (map['eventSubscriptionName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      topicName: (map['topicName'] as String).input(),
    );
  }
}

