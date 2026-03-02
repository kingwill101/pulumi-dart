// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_function_event_subscription_destination.dart';
import 'dead_letter_with_resource_identity.dart';
import 'delivery_with_resource_identity.dart';
import 'event_subscription_filter.dart';
import 'retry_policy.dart';
import 'storage_blob_dead_letter_destination.dart';

/// {@template pulumi_eventgrid_domain_topic_event_subscription_args_doc}
/// The set of arguments for DomainTopicEventSubscription.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_domain_topic_event_subscription_args_doc}
class DomainTopicEventSubscriptionArgs {
  /// The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// Uses Azure Event Grid's identity to acquire the authentication tokens being used during delivery / dead-lettering.
  final pulumi.Input<StorageBlobDeadLetterDestination>? deadLetterDestination;
  /// The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during delivery / dead-lettering.
  final pulumi.Input<DeadLetterWithResourceIdentity>? deadLetterWithResourceIdentity;
  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during delivery / dead-lettering.
  final pulumi.Input<DeliveryWithResourceIdentity>? deliveryWithResourceIdentity;
  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses Azure Event Grid's identity to acquire the authentication tokens being used during delivery / dead-lettering.
  final pulumi.Input<AzureFunctionEventSubscriptionDestination>? destination;
  /// Name of the top level domain.
  final pulumi.Input<String> domainName;
  /// The event delivery schema for the event subscription.
  final pulumi.Input<String>? eventDeliverySchema;
  /// Name of the event subscription to be created. Event subscription names must be between 3 and 64 characters in length and use alphanumeric letters only.
  final pulumi.Input<String>? eventSubscriptionName;
  /// Expiration time of the event subscription.
  final pulumi.Input<String>? expirationTimeUtc;
  /// Information about the filter for the event subscription.
  final pulumi.Input<EventSubscriptionFilter>? filter;
  /// List of user defined labels.
  final pulumi.Input<List<String>>? labels;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// The retry policy for events. This can be used to configure maximum number of delivery attempts and time to live for events.
  final pulumi.Input<RetryPolicy>? retryPolicy;
  /// Name of the domain topic.
  final pulumi.Input<String> topicName;

  /// Creates a new [DomainTopicEventSubscriptionArgs].
  /// [deadLetterDestination] The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// [deadLetterWithResourceIdentity] The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// [deliveryWithResourceIdentity] Information about the destination where events have to be delivered for the event subscription.
  /// [destination] Information about the destination where events have to be delivered for the event subscription.
  /// [domainName] Name of the top level domain.
  /// [eventDeliverySchema] The event delivery schema for the event subscription.
  /// [eventSubscriptionName] Name of the event subscription to be created. Event subscription names must be between 3 and 64 characters in length and use alphanumeric letters only.
  /// [expirationTimeUtc] Expiration time of the event subscription.
  /// [filter] Information about the filter for the event subscription.
  /// [labels] List of user defined labels.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [retryPolicy] The retry policy for events. This can be used to configure maximum number of delivery attempts and time to live for events.
  /// [topicName] Name of the domain topic.
  DomainTopicEventSubscriptionArgs({
    this.deadLetterDestination,
    this.deadLetterWithResourceIdentity,
    this.deliveryWithResourceIdentity,
    this.destination,
    required this.domainName,
    this.eventDeliverySchema,
    this.eventSubscriptionName,
    this.expirationTimeUtc,
    this.filter,
    this.labels,
    required this.resourceGroupName,
    this.retryPolicy,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterDestination': ?pulumi.Input.mapOptionalInputValue<StorageBlobDeadLetterDestination, Map<String, dynamic>>(deadLetterDestination, (value) => value.toMap()),
      'deadLetterWithResourceIdentity': ?pulumi.Input.mapOptionalInputValue<DeadLetterWithResourceIdentity, Map<String, dynamic>>(deadLetterWithResourceIdentity, (value) => value.toMap()),
      'deliveryWithResourceIdentity': ?pulumi.Input.mapOptionalInputValue<DeliveryWithResourceIdentity, Map<String, dynamic>>(deliveryWithResourceIdentity, (value) => value.toMap()),
      'destination': ?pulumi.Input.mapOptionalInputValue<AzureFunctionEventSubscriptionDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'domainName': domainName,
      'eventDeliverySchema': ?eventDeliverySchema,
      'eventSubscriptionName': ?eventSubscriptionName,
      'expirationTimeUtc': ?expirationTimeUtc,
      'filter': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'labels': ?labels,
      'resourceGroupName': resourceGroupName,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'topicName': topicName,
    };
  }

  factory DomainTopicEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return DomainTopicEventSubscriptionArgs(
      deadLetterDestination: map['deadLetterDestination'] == null ? null : (StorageBlobDeadLetterDestination.fromMap((map['deadLetterDestination'] as Map).cast<String, dynamic>())).input(),
      deadLetterWithResourceIdentity: map['deadLetterWithResourceIdentity'] == null ? null : (DeadLetterWithResourceIdentity.fromMap((map['deadLetterWithResourceIdentity'] as Map).cast<String, dynamic>())).input(),
      deliveryWithResourceIdentity: map['deliveryWithResourceIdentity'] == null ? null : (DeliveryWithResourceIdentity.fromMap((map['deliveryWithResourceIdentity'] as Map).cast<String, dynamic>())).input(),
      destination: map['destination'] == null ? null : (AzureFunctionEventSubscriptionDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
      domainName: (map['domainName'] as String).input(),
      eventDeliverySchema: map['eventDeliverySchema'] == null ? null : (map['eventDeliverySchema'] as String).input(),
      eventSubscriptionName: map['eventSubscriptionName'] == null ? null : (map['eventSubscriptionName'] as String).input(),
      expirationTimeUtc: map['expirationTimeUtc'] == null ? null : (map['expirationTimeUtc'] as String).input(),
      filter: map['filter'] == null ? null : (EventSubscriptionFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as List).cast<String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      retryPolicy: map['retryPolicy'] == null ? null : (RetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>())).input(),
      topicName: (map['topicName'] as String).input(),
    );
  }
}

