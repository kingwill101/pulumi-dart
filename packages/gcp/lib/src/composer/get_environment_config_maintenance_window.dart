// ignore_for_file: unused_element, unnecessary_cast

class GetEnvironmentConfigMaintenanceWindow {
  /// Maintenance window end time. It is used only to calculate the duration of the maintenance window. The value for end-time must be in the future, relative to 'start_time'.
  final String endTime;

  /// Maintenance window recurrence. Format is a subset of RFC-5545 (https://tools.ietf.org/html/rfc5545) 'RRULE'. The only allowed values for 'FREQ' field are 'FREQ=DAILY' and 'FREQ=WEEKLY;BYDAY=...'. Example values: 'FREQ=WEEKLY;BYDAY=TU,WE', 'FREQ=DAILY'.
  final String recurrence;

  /// Start time of the first recurrence of the maintenance window.
  final String startTime;

  /// Creates a new [GetEnvironmentConfigMaintenanceWindow].
  /// [endTime] Maintenance window end time. It is used only to calculate the duration of the maintenance window. The value for end-time must be in the future, relative to 'start_time'.
  /// [recurrence] Maintenance window recurrence. Format is a subset of RFC-5545 (https://tools.ietf.org/html/rfc5545) 'RRULE'. The only allowed values for 'FREQ' field are 'FREQ=DAILY' and 'FREQ=WEEKLY;BYDAY=...'. Example values: 'FREQ=WEEKLY;BYDAY=TU,WE', 'FREQ=DAILY'.
  /// [startTime] Start time of the first recurrence of the maintenance window.
  GetEnvironmentConfigMaintenanceWindow({
    required this.endTime,
    required this.recurrence,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['recurrence'] = recurrence;
    map['startTime'] = startTime;
    return map;
  }

  factory GetEnvironmentConfigMaintenanceWindow.fromMap(
      Map<String, dynamic> map) {
    return GetEnvironmentConfigMaintenanceWindow(
      endTime: map['endTime'] as String,
      recurrence: map['recurrence'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
