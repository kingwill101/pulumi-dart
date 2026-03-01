// ignore_for_file: unused_element, unnecessary_cast


/// Information about the retry policy for an event subscription.
class RetryPolicyResponse {
  /// Time To Live (in minutes) for events.
  final int? eventTimeToLiveInMinutes;
  /// Maximum number of delivery retry attempts for events.
  final int? maxDeliveryAttempts;

  /// Creates a new [RetryPolicyResponse].
  /// [eventTimeToLiveInMinutes] Time To Live (in minutes) for events.
  /// [maxDeliveryAttempts] Maximum number of delivery retry attempts for events.
  RetryPolicyResponse({
    this.eventTimeToLiveInMinutes,
    this.maxDeliveryAttempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTimeToLiveInMinutes': ?eventTimeToLiveInMinutes,
      'maxDeliveryAttempts': ?maxDeliveryAttempts,
    };
  }

  factory RetryPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RetryPolicyResponse(
      eventTimeToLiveInMinutes: map['eventTimeToLiveInMinutes'] == null ? null : map['eventTimeToLiveInMinutes'] as int,
      maxDeliveryAttempts: map['maxDeliveryAttempts'] == null ? null : map['maxDeliveryAttempts'] as int,
    );
  }
}

