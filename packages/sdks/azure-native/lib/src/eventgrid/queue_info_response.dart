// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dead_letter_with_resource_identity_response.dart';

/// Properties of the Queue info for event subscription.
class QueueInfoResponse {
  /// The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// Uses the managed identity setup on the parent resource (namely, topic) to acquire the authentication tokens being used during delivery / dead-lettering.
  final pulumi.Input<DeadLetterWithResourceIdentityResponse?>? deadLetterDestinationWithResourceIdentity;
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
  final pulumi.Input<String?>? eventTimeToLive;
  /// The maximum delivery count of the events.
  final pulumi.Input<int?>? maxDeliveryCount;
  /// Maximum period in seconds in which once the message is in received (by the client) state and waiting to be accepted, released or rejected.
  /// If this time elapsed after a message has been received by the client and not transitioned into accepted (not processed), released or rejected,
  /// the message is available for redelivery. This is an optional field, where default is 60 seconds, minimum is 60 seconds and maximum is 300 seconds.
  final pulumi.Input<int?>? receiveLockDurationInSeconds;

  /// Creates a new [QueueInfoResponse].
  /// [deadLetterDestinationWithResourceIdentity] The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// [eventTimeToLive] Time span duration in ISO 8601 format that determines how long messages are available to the subscription from the time the message was published.
  /// [maxDeliveryCount] The maximum delivery count of the events.
  /// [receiveLockDurationInSeconds] Maximum period in seconds in which once the message is in received (by the client) state and waiting to be accepted, released or rejected.
  const QueueInfoResponse({
    this.deadLetterDestinationWithResourceIdentity,
    this.eventTimeToLive,
    this.maxDeliveryCount,
    this.receiveLockDurationInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterDestinationWithResourceIdentity': ?pulumi.Input.mapOptionalInputValue<DeadLetterWithResourceIdentityResponse, Map<String, dynamic>>(deadLetterDestinationWithResourceIdentity, (value) => value.toMap()),
      'eventTimeToLive': ?eventTimeToLive,
      'maxDeliveryCount': ?maxDeliveryCount,
      'receiveLockDurationInSeconds': ?receiveLockDurationInSeconds,
    };
  }

  factory QueueInfoResponse.fromMap(Map<String, dynamic> map) {
    return QueueInfoResponse(
      deadLetterDestinationWithResourceIdentity: (() { final guardedValue = map['deadLetterDestinationWithResourceIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeadLetterWithResourceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventTimeToLive: (() { final guardedValue = map['eventTimeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxDeliveryCount: (() { final guardedValue = map['maxDeliveryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      receiveLockDurationInSeconds: (() { final guardedValue = map['receiveLockDurationInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
