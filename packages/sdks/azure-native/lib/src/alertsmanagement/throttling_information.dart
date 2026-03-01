// ignore_for_file: unused_element, unnecessary_cast


/// Optional throttling information for the alert rule.
class ThrottlingInformation {
  /// The required duration (in ISO8601 format) to wait before notifying on the alert rule again. The time granularity must be in minutes and minimum value is 0 minutes
  final String? duration;

  /// Creates a new [ThrottlingInformation].
  /// [duration] The required duration (in ISO8601 format) to wait before notifying on the alert rule again. The time granularity must be in minutes and minimum value is 0 minutes
  ThrottlingInformation({
    this.duration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
    };
  }

  factory ThrottlingInformation.fromMap(Map<String, dynamic> map) {
    return ThrottlingInformation(
      duration: map['duration'] == null ? null : map['duration'] as String,
    );
  }
}

