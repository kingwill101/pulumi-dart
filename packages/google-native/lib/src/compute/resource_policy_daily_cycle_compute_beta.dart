// ignore_for_file: unused_element, unnecessary_cast


/// Time window specified for daily operations.
class ResourcePolicyDailyCycleComputeBeta {
  /// Defines a schedule with units measured in days. The value determines how many days pass between the start of each cycle.
  final int? daysInCycle;
  /// Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  final String? startTime;

  /// Creates a new [ResourcePolicyDailyCycleComputeBeta].
  /// [daysInCycle] Defines a schedule with units measured in days. The value determines how many days pass between the start of each cycle.
  /// [startTime] Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  ResourcePolicyDailyCycleComputeBeta({
    this.daysInCycle,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysInCycle': ?daysInCycle,
      'startTime': ?startTime,
    };
  }

  factory ResourcePolicyDailyCycleComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyDailyCycleComputeBeta(
      daysInCycle: map['daysInCycle'] == null ? null : map['daysInCycle'] as int,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

