// ignore_for_file: unused_element, unnecessary_cast


class ResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule {
  /// The number of hours between snapshots.
  final int hoursInCycle;
  /// Time within the window to start the operations.
  /// It must be in an hourly format "HH:MM",
  /// where HH : [00-23] and MM : [00] GMT. eg: 21:00
  final String startTime;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule].
  /// [hoursInCycle] The number of hours between snapshots.
  /// [startTime] Time within the window to start the operations.
  ResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule({
    required this.hoursInCycle,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hoursInCycle': hoursInCycle,
      'startTime': startTime,
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule(
      hoursInCycle: map['hoursInCycle'] as int,
      startTime: map['startTime'] as String,
    );
  }
}

