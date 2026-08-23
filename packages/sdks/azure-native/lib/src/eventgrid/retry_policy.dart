// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the retry policy for an event subscription.
class RetryPolicy {
  /// Time To Live (in minutes) for events.
  final pulumi.Input<int>? eventTimeToLiveInMinutes;
  /// Maximum number of delivery retry attempts for events.
  final pulumi.Input<int>? maxDeliveryAttempts;

  /// Creates a new [RetryPolicy].
  /// [eventTimeToLiveInMinutes] Time To Live (in minutes) for events.
  /// [maxDeliveryAttempts] Maximum number of delivery retry attempts for events.
  const RetryPolicy({
    this.eventTimeToLiveInMinutes,
    this.maxDeliveryAttempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTimeToLiveInMinutes': ?eventTimeToLiveInMinutes,
      'maxDeliveryAttempts': ?maxDeliveryAttempts,
    };
  }

  factory RetryPolicy.fromMap(Map<String, dynamic> map) {
    return RetryPolicy(
      eventTimeToLiveInMinutes: (() { final guardedValue = map['eventTimeToLiveInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxDeliveryAttempts: (() { final guardedValue = map['maxDeliveryAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
