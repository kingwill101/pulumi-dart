// ignore_for_file: unused_element, unnecessary_cast


/// Optional throttling information for the alert rule.
class ThrottlingInformationResponse {
  /// The required duration (in ISO8601 format) to wait before notifying on the alert rule again. The time granularity must be in minutes and minimum value is 0 minutes
  final String? duration;

  /// Creates a new [ThrottlingInformationResponse].
  /// [duration] The required duration (in ISO8601 format) to wait before notifying on the alert rule again. The time granularity must be in minutes and minimum value is 0 minutes
  ThrottlingInformationResponse({
    this.duration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
    };
  }

  factory ThrottlingInformationResponse.fromMap(Map<String, dynamic> map) {
    return ThrottlingInformationResponse(
      duration: map['duration'] == null ? null : map['duration'] as String,
    );
  }
}

