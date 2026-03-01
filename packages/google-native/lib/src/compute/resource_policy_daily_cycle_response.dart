// ignore_for_file: unused_element, unnecessary_cast

/// Time window specified for daily operations.
class ResourcePolicyDailyCycleResponse {
  /// Defines a schedule with units measured in days. The value determines how many days pass between the start of each cycle.
  final int daysInCycle;

  /// [Output only] A predetermined duration for the window, automatically chosen to be the smallest possible in the given scenario.
  final String duration;

  /// Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  final String startTime;

  /// Creates a new [ResourcePolicyDailyCycleResponse].
  /// [daysInCycle] Defines a schedule with units measured in days. The value determines how many days pass between the start of each cycle.
  /// [duration] [Output only] A predetermined duration for the window, automatically chosen to be the smallest possible in the given scenario.
  /// [startTime] Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  ResourcePolicyDailyCycleResponse({
    required this.daysInCycle,
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysInCycle': daysInCycle,
      'duration': duration,
      'startTime': startTime,
    };
  }

  factory ResourcePolicyDailyCycleResponse.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyDailyCycleResponse(
      daysInCycle: map['daysInCycle'] as int,
      duration: map['duration'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
