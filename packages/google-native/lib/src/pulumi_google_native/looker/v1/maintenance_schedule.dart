// ignore_for_file: unused_element, unnecessary_cast

/// Published upcoming future maintenance schedule.
class MaintenanceSchedule {
  /// The scheduled end time for the maintenance.
  final String? endTime;

  /// The scheduled start time for the maintenance.
  final String? startTime;

  MaintenanceSchedule({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory MaintenanceSchedule.fromMap(Map<String, dynamic> map) {
    return MaintenanceSchedule(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
