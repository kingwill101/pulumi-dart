// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentConfigMaintenanceWindow {
  /// Maintenance window end time. It is used only to calculate the duration of the maintenance window. The value for end-time must be in the future, relative to 'start_time'.
  final String endTime;

  /// Maintenance window recurrence. Format is a subset of RFC-5545 (https://tools.ietf.org/html/rfc5545) 'RRULE'. The only allowed values for 'FREQ' field are 'FREQ=DAILY' and 'FREQ=WEEKLY;BYDAY=...'. Example values: 'FREQ=WEEKLY;BYDAY=TU,WE', 'FREQ=DAILY'.
  final String recurrence;

  /// Start time of the first recurrence of the maintenance window.
  final String startTime;

  /// Creates a new [EnvironmentConfigMaintenanceWindow].
  /// [endTime] Maintenance window end time. It is used only to calculate the duration of the maintenance window. The value for end-time must be in the future, relative to 'start_time'.
  /// [recurrence] Maintenance window recurrence. Format is a subset of RFC-5545 (https://tools.ietf.org/html/rfc5545) 'RRULE'. The only allowed values for 'FREQ' field are 'FREQ=DAILY' and 'FREQ=WEEKLY;BYDAY=...'. Example values: 'FREQ=WEEKLY;BYDAY=TU,WE', 'FREQ=DAILY'.
  /// [startTime] Start time of the first recurrence of the maintenance window.
  EnvironmentConfigMaintenanceWindow({
    required this.endTime,
    required this.recurrence,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'recurrence': recurrence,
      'startTime': startTime,
    };
  }

  factory EnvironmentConfigMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigMaintenanceWindow(
      endTime: map['endTime'] as String,
      recurrence: map['recurrence'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
