// ignore_for_file: unused_element, unnecessary_cast


/// Information about the retry policy for an event subscription.
class RetryPolicy {
  /// Time To Live (in minutes) for events.
  final int? eventTimeToLiveInMinutes;
  /// Maximum number of delivery retry attempts for events.
  final int? maxDeliveryAttempts;

  /// Creates a new [RetryPolicy].
  /// [eventTimeToLiveInMinutes] Time To Live (in minutes) for events.
  /// [maxDeliveryAttempts] Maximum number of delivery retry attempts for events.
  RetryPolicy({
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
      eventTimeToLiveInMinutes: map['eventTimeToLiveInMinutes'] == null ? null : map['eventTimeToLiveInMinutes'] as int,
      maxDeliveryAttempts: map['maxDeliveryAttempts'] == null ? null : map['maxDeliveryAttempts'] as int,
    );
  }
}

