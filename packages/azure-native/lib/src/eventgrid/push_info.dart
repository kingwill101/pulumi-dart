// ignore_for_file: unused_element, unnecessary_cast

import 'azure_function_event_subscription_destination.dart';
import 'dead_letter_with_resource_identity.dart';
import 'delivery_with_resource_identity.dart';

/// Properties of the destination info for event subscription supporting push.
class PushInfo {
  /// The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// Uses the managed identity setup on the parent resource (namely, namespace) to acquire the authentication tokens being used during dead-lettering.
  final DeadLetterWithResourceIdentity? deadLetterDestinationWithResourceIdentity;
  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during delivery.
  final DeliveryWithResourceIdentity? deliveryWithResourceIdentity;
  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses Azure Event Grid's identity to acquire the authentication tokens being used during delivery.
  final AzureFunctionEventSubscriptionDestination? destination;
  /// Time span duration in ISO 8601 format that determines how long messages are available to the subscription from the time the message was published.
  /// This duration value is expressed using the following format: \'P(n)Y(n)M(n)DT(n)H(n)M(n)S\', where:
  /// - (n) is replaced by the value of each time element that follows the (n).
  /// - P is the duration (or Period) designator and is always placed at the beginning of the duration.
  /// - Y is the year designator, and it follows the value for the number of years.
  /// - M is the month designator, and it follows the value for the number of months.
  /// - W is the week designator, and it follows the value for the number of weeks.
  /// - D is the day designator, and it follows the value for the number of days.
  /// - T is the time designator, and it precedes the time components.
  /// - H is the hour designator, and it follows the value for the number of hours.
  /// - M is the minute designator, and it follows the value for the number of minutes.
  /// - S is the second designator, and it follows the value for the number of seconds.
  /// This duration value cannot be set greater than the topic’s EventRetentionInDays. It is is an optional field where its minimum value is 1 minute, and its maximum is determined
  /// by topic’s EventRetentionInDays value. The followings are examples of valid values:
  /// - \'P0DT23H12M\' or \'PT23H12M\': for duration of 23 hours and 12 minutes.
  /// - \'P1D\' or \'P1DT0H0M0S\': for duration of 1 day.
  final String? eventTimeToLive;
  /// The maximum delivery count of the events.
  final int? maxDeliveryCount;

  /// Creates a new [PushInfo].
  /// [deadLetterDestinationWithResourceIdentity] The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// [deliveryWithResourceIdentity] Information about the destination where events have to be delivered for the event subscription.
  /// [destination] Information about the destination where events have to be delivered for the event subscription.
  /// [eventTimeToLive] Time span duration in ISO 8601 format that determines how long messages are available to the subscription from the time the message was published.
  /// [maxDeliveryCount] The maximum delivery count of the events.
  PushInfo({
    this.deadLetterDestinationWithResourceIdentity,
    this.deliveryWithResourceIdentity,
    this.destination,
    this.eventTimeToLive,
    this.maxDeliveryCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterDestinationWithResourceIdentity': ?deadLetterDestinationWithResourceIdentity == null ? null : deadLetterDestinationWithResourceIdentity!.toMap(),
      'deliveryWithResourceIdentity': ?deliveryWithResourceIdentity == null ? null : deliveryWithResourceIdentity!.toMap(),
      'destination': ?destination == null ? null : destination!.toMap(),
      'eventTimeToLive': ?eventTimeToLive,
      'maxDeliveryCount': ?maxDeliveryCount,
    };
  }

  factory PushInfo.fromMap(Map<String, dynamic> map) {
    return PushInfo(
      deadLetterDestinationWithResourceIdentity: map['deadLetterDestinationWithResourceIdentity'] == null ? null : DeadLetterWithResourceIdentity.fromMap((map['deadLetterDestinationWithResourceIdentity'] as Map).cast<String, dynamic>()),
      deliveryWithResourceIdentity: map['deliveryWithResourceIdentity'] == null ? null : DeliveryWithResourceIdentity.fromMap((map['deliveryWithResourceIdentity'] as Map).cast<String, dynamic>()),
      destination: map['destination'] == null ? null : AzureFunctionEventSubscriptionDestination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      eventTimeToLive: map['eventTimeToLive'] == null ? null : map['eventTimeToLive'] as String,
      maxDeliveryCount: map['maxDeliveryCount'] == null ? null : map['maxDeliveryCount'] as int,
    );
  }
}

