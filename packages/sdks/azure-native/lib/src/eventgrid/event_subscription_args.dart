// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_function_event_subscription_destination.dart';
import 'dead_letter_with_resource_identity.dart';
import 'delivery_with_resource_identity.dart';
import 'event_subscription_filter.dart';
import 'retry_policy.dart';
import 'storage_blob_dead_letter_destination.dart';

/// {@template pulumi_eventgrid_event_subscription_args_doc}
/// The set of arguments for EventSubscription.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_event_subscription_args_doc}
class EventSubscriptionArgs {
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
  /// The event delivery schema for the event subscription.
  final pulumi.Input<String>? eventDeliverySchema;
  /// Name of the event subscription to be created. Event subscription names must be between 3 and 64 characters in length and should use alphanumeric letters only.
  final pulumi.Input<String>? eventSubscriptionName;
  /// Expiration time of the event subscription.
  final pulumi.Input<String>? expirationTimeUtc;
  /// Information about the filter for the event subscription.
  final pulumi.Input<EventSubscriptionFilter>? filter;
  /// List of user defined labels.
  final pulumi.Input<List<String>>? labels;
  /// The retry policy for events. This can be used to configure maximum number of delivery attempts and time to live for events.
  final pulumi.Input<RetryPolicy>? retryPolicy;
  /// The identifier of the resource to which the event subscription needs to be created or updated. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace, or an EventGrid topic. For example, use '/subscriptions/{subscriptionId}/' for a subscription, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for a resource group, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}' for a resource, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}' for an EventGrid topic.
  final pulumi.Input<String> scope;

  /// Creates a new [EventSubscriptionArgs].
  /// [deadLetterDestination] The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// [deadLetterWithResourceIdentity] The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// [deliveryWithResourceIdentity] Information about the destination where events have to be delivered for the event subscription.
  /// [destination] Information about the destination where events have to be delivered for the event subscription.
  /// [eventDeliverySchema] The event delivery schema for the event subscription.
  /// [eventSubscriptionName] Name of the event subscription to be created. Event subscription names must be between 3 and 64 characters in length and should use alphanumeric letters only.
  /// [expirationTimeUtc] Expiration time of the event subscription.
  /// [filter] Information about the filter for the event subscription.
  /// [labels] List of user defined labels.
  /// [retryPolicy] The retry policy for events. This can be used to configure maximum number of delivery attempts and time to live for events.
  /// [scope] The identifier of the resource to which the event subscription needs to be created or updated. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace, or an EventGrid topic. For example, use '/subscriptions/{subscriptionId}/' for a subscription, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for a resource group, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}' for a resource, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}' for an EventGrid topic.
  EventSubscriptionArgs({
    pulumi.Output<StorageBlobDeadLetterDestination>? deadLetterDestination,
    pulumi.Output<DeadLetterWithResourceIdentity>? deadLetterWithResourceIdentity,
    pulumi.Output<DeliveryWithResourceIdentity>? deliveryWithResourceIdentity,
    pulumi.Output<AzureFunctionEventSubscriptionDestination>? destination,
    pulumi.Output<String>? eventDeliverySchema,
    pulumi.Output<String>? eventSubscriptionName,
    pulumi.Output<String>? expirationTimeUtc,
    pulumi.Output<EventSubscriptionFilter>? filter,
    pulumi.Output<List<String>>? labels,
    pulumi.Output<RetryPolicy>? retryPolicy,
    required pulumi.Output<String> scope,
  }) :
      deadLetterDestination = pulumi.Input.asOptionalInput<StorageBlobDeadLetterDestination>(deadLetterDestination),
      deadLetterWithResourceIdentity = pulumi.Input.asOptionalInput<DeadLetterWithResourceIdentity>(deadLetterWithResourceIdentity),
      deliveryWithResourceIdentity = pulumi.Input.asOptionalInput<DeliveryWithResourceIdentity>(deliveryWithResourceIdentity),
      destination = pulumi.Input.asOptionalInput<AzureFunctionEventSubscriptionDestination>(destination),
      eventDeliverySchema = pulumi.Input.asOptionalInput<String>(eventDeliverySchema),
      eventSubscriptionName = pulumi.Input.asOptionalInput<String>(eventSubscriptionName),
      expirationTimeUtc = pulumi.Input.asOptionalInput<String>(expirationTimeUtc),
      filter = pulumi.Input.asOptionalInput<EventSubscriptionFilter>(filter),
      labels = pulumi.Input.asOptionalInput<List<String>>(labels),
      retryPolicy = pulumi.Input.asOptionalInput<RetryPolicy>(retryPolicy),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterDestination': ?pulumi.Input.mapOptionalInputValue<StorageBlobDeadLetterDestination, Map<String, dynamic>>(deadLetterDestination, (value) => value.toMap()),
      'deadLetterWithResourceIdentity': ?pulumi.Input.mapOptionalInputValue<DeadLetterWithResourceIdentity, Map<String, dynamic>>(deadLetterWithResourceIdentity, (value) => value.toMap()),
      'deliveryWithResourceIdentity': ?pulumi.Input.mapOptionalInputValue<DeliveryWithResourceIdentity, Map<String, dynamic>>(deliveryWithResourceIdentity, (value) => value.toMap()),
      'destination': ?pulumi.Input.mapOptionalInputValue<AzureFunctionEventSubscriptionDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'eventDeliverySchema': ?eventDeliverySchema,
      'eventSubscriptionName': ?eventSubscriptionName,
      'expirationTimeUtc': ?expirationTimeUtc,
      'filter': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'labels': ?labels,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'scope': scope,
    };
  }

  factory EventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionArgs(
      deadLetterDestination: map['deadLetterDestination'] == null ? null : pulumi.Output.create<StorageBlobDeadLetterDestination>(StorageBlobDeadLetterDestination.fromMap((map['deadLetterDestination'] as Map).cast<String, dynamic>())),
      deadLetterWithResourceIdentity: map['deadLetterWithResourceIdentity'] == null ? null : pulumi.Output.create<DeadLetterWithResourceIdentity>(DeadLetterWithResourceIdentity.fromMap((map['deadLetterWithResourceIdentity'] as Map).cast<String, dynamic>())),
      deliveryWithResourceIdentity: map['deliveryWithResourceIdentity'] == null ? null : pulumi.Output.create<DeliveryWithResourceIdentity>(DeliveryWithResourceIdentity.fromMap((map['deliveryWithResourceIdentity'] as Map).cast<String, dynamic>())),
      destination: map['destination'] == null ? null : pulumi.Output.create<AzureFunctionEventSubscriptionDestination>(AzureFunctionEventSubscriptionDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())),
      eventDeliverySchema: map['eventDeliverySchema'] == null ? null : pulumi.Output.create<String>(map['eventDeliverySchema'] as String),
      eventSubscriptionName: map['eventSubscriptionName'] == null ? null : pulumi.Output.create<String>(map['eventSubscriptionName'] as String),
      expirationTimeUtc: map['expirationTimeUtc'] == null ? null : pulumi.Output.create<String>(map['expirationTimeUtc'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<EventSubscriptionFilter>(EventSubscriptionFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<String>>((map['labels'] as List).cast<String>()),
      retryPolicy: map['retryPolicy'] == null ? null : pulumi.Output.create<RetryPolicy>(RetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>())),
      scope: pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

