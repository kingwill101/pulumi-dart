// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_function_event_subscription_destination.dart';
import 'dead_letter_with_resource_identity.dart';
import 'delivery_with_resource_identity.dart';
import 'event_subscription_filter.dart';
import 'retry_policy.dart';
import 'storage_blob_dead_letter_destination.dart';

/// {@template pulumi_eventgrid_topic_event_subscription_args_doc}
/// The set of arguments for TopicEventSubscription.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_topic_event_subscription_args_doc}
class TopicEventSubscriptionArgs {
  /// The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// Uses Azure Event Grid's identity to acquire the authentication tokens being used during delivery / dead-lettering.
  final pulumi.Input<StorageBlobDeadLetterDestination>? deadLetterDestination;

  /// The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during delivery / dead-lettering.
  final pulumi.Input<DeadLetterWithResourceIdentity>?
  deadLetterWithResourceIdentity;

  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during delivery / dead-lettering.
  final pulumi.Input<DeliveryWithResourceIdentity>?
  deliveryWithResourceIdentity;

  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses Azure Event Grid's identity to acquire the authentication tokens being used during delivery / dead-lettering.
  final pulumi.Input<AzureFunctionEventSubscriptionDestination>? destination;

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

  /// Creates a new [TopicEventSubscriptionArgs].
  /// [deadLetterDestination] The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// [deadLetterWithResourceIdentity] The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// [deliveryWithResourceIdentity] Information about the destination where events have to be delivered for the event subscription.
  /// [destination] Information about the destination where events have to be delivered for the event subscription.
  /// [eventDeliverySchema] The event delivery schema for the event subscription.
  /// [eventSubscriptionName] Name of the event subscription to be created. Event subscription names must be between 3 and 64 characters in length and use alphanumeric letters only.
  /// [expirationTimeUtc] Expiration time of the event subscription.
  /// [filter] Information about the filter for the event subscription.
  /// [labels] List of user defined labels.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [retryPolicy] The retry policy for events. This can be used to configure maximum number of delivery attempts and time to live for events.
  /// [topicName] Name of the domain topic.
  TopicEventSubscriptionArgs({
    this.deadLetterDestination,
    this.deadLetterWithResourceIdentity,
    this.deliveryWithResourceIdentity,
    this.destination,
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
      'deadLetterDestination':
          ?pulumi.Input.mapOptionalInputValue<
            StorageBlobDeadLetterDestination,
            Map<String, dynamic>
          >(deadLetterDestination, (value) => value.toMap()),
      'deadLetterWithResourceIdentity':
          ?pulumi.Input.mapOptionalInputValue<
            DeadLetterWithResourceIdentity,
            Map<String, dynamic>
          >(deadLetterWithResourceIdentity, (value) => value.toMap()),
      'deliveryWithResourceIdentity':
          ?pulumi.Input.mapOptionalInputValue<
            DeliveryWithResourceIdentity,
            Map<String, dynamic>
          >(deliveryWithResourceIdentity, (value) => value.toMap()),
      'destination':
          ?pulumi.Input.mapOptionalInputValue<
            AzureFunctionEventSubscriptionDestination,
            Map<String, dynamic>
          >(destination, (value) => value.toMap()),
      'eventDeliverySchema': ?eventDeliverySchema,
      'eventSubscriptionName': ?eventSubscriptionName,
      'expirationTimeUtc': ?expirationTimeUtc,
      'filter':
          ?pulumi.Input.mapOptionalInputValue<
            EventSubscriptionFilter,
            Map<String, dynamic>
          >(filter, (value) => value.toMap()),
      'labels': ?labels,
      'resourceGroupName': resourceGroupName,
      'retryPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            RetryPolicy,
            Map<String, dynamic>
          >(retryPolicy, (value) => value.toMap()),
      'topicName': topicName,
    };
  }

  factory TopicEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return TopicEventSubscriptionArgs(
      deadLetterDestination: (() {
        final guardedValue = map['deadLetterDestination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StorageBlobDeadLetterDestination.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deadLetterWithResourceIdentity: (() {
        final guardedValue = map['deadLetterWithResourceIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeadLetterWithResourceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deliveryWithResourceIdentity: (() {
        final guardedValue = map['deliveryWithResourceIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeliveryWithResourceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      destination: (() {
        final guardedValue = map['destination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureFunctionEventSubscriptionDestination.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      eventDeliverySchema: (() {
        final guardedValue = map['eventDeliverySchema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventSubscriptionName: (() {
        final guardedValue = map['eventSubscriptionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expirationTimeUtc: (() {
        final guardedValue = map['expirationTimeUtc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventSubscriptionFilter.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      retryPolicy: (() {
        final guardedValue = map['retryPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}
