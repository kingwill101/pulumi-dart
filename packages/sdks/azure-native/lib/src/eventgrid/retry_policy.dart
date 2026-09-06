// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the retry policy for an event subscription.
class RetryPolicy {
  /// Time To Live (in minutes) for events.
  final pulumi.Input<int?>? eventTimeToLiveInMinutes;
  /// Maximum number of delivery retry attempts for events.
  final pulumi.Input<int?>? maxDeliveryAttempts;

  /// Creates a new [RetryPolicy].
  /// [eventTimeToLiveInMinutes] Time To Live (in minutes) for events.
  /// [maxDeliveryAttempts] Maximum number of delivery retry attempts for events.
  RetryPolicy({
    pulumi.Input<int?>? eventTimeToLiveInMinutes,
    pulumi.Input<int?>? maxDeliveryAttempts,
  }) : eventTimeToLiveInMinutes = eventTimeToLiveInMinutes ?? pulumi.Input.fromValue(1440), maxDeliveryAttempts = maxDeliveryAttempts ?? pulumi.Input.fromValue(30);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTimeToLiveInMinutes': ?eventTimeToLiveInMinutes,
      'maxDeliveryAttempts': ?maxDeliveryAttempts,
    };
  }

  factory RetryPolicy.fromMap(Map<String, dynamic> map) {
    return RetryPolicy(
      eventTimeToLiveInMinutes: (() { final guardedValue = map['eventTimeToLiveInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxDeliveryAttempts: (() { final guardedValue = map['maxDeliveryAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
