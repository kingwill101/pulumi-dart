// ignore_for_file: unused_element, unnecessary_cast

/// Time window specified for daily operations.
class ResourcePolicyDailyCycleComputeV1 {
  /// Defines a schedule with units measured in days. The value determines how many days pass between the start of each cycle.
  final int? daysInCycle;

  /// Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  final String? startTime;

  /// Creates a new [ResourcePolicyDailyCycleComputeV1].
  /// [daysInCycle] Defines a schedule with units measured in days. The value determines how many days pass between the start of each cycle.
  /// [startTime] Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  ResourcePolicyDailyCycleComputeV1({
    this.daysInCycle,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final daysInCycleValue = daysInCycle;
    if (daysInCycleValue != null) {
      map['daysInCycle'] = daysInCycleValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory ResourcePolicyDailyCycleComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyDailyCycleComputeV1(
      daysInCycle:
          map['daysInCycle'] == null ? null : map['daysInCycle'] as int,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
