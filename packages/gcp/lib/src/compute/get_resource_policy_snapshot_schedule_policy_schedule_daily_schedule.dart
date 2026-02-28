// ignore_for_file: unused_element, unnecessary_cast


class GetResourcePolicySnapshotSchedulePolicyScheduleDailySchedule {
  /// Defines a schedule with units measured in days. The value determines how many days pass between the start of each cycle. Days in cycle for snapshot schedule policy must be 1.
  final int daysInCycle;
  /// This must be in UTC format that resolves to one of
  /// 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example,
  /// both 13:00-5 and 08:00 are valid.
  final String startTime;

  /// Creates a new [GetResourcePolicySnapshotSchedulePolicyScheduleDailySchedule].
  /// [daysInCycle] Defines a schedule with units measured in days. The value determines how many days pass between the start of each cycle. Days in cycle for snapshot schedule policy must be 1.
  /// [startTime] This must be in UTC format that resolves to one of
  GetResourcePolicySnapshotSchedulePolicyScheduleDailySchedule({
    required this.daysInCycle,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysInCycle': daysInCycle,
      'startTime': startTime,
    };
  }

  factory GetResourcePolicySnapshotSchedulePolicyScheduleDailySchedule.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicySnapshotSchedulePolicyScheduleDailySchedule(
      daysInCycle: map['daysInCycle'] as int,
      startTime: map['startTime'] as String,
    );
  }
}

