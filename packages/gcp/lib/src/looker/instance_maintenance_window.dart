// ignore_for_file: unused_element, unnecessary_cast

import 'instance_maintenance_window_start_time.dart';

class InstanceMaintenanceWindow {
  /// Required. Day of the week for this MaintenanceWindow (in UTC).
  /// - MONDAY: Monday
  /// - TUESDAY: Tuesday
  /// - WEDNESDAY: Wednesday
  /// - THURSDAY: Thursday
  /// - FRIDAY: Friday
  /// - SATURDAY: Saturday
  /// - SUNDAY: Sunday
  /// Possible values are: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final String dayOfWeek;

  /// Required. Start time of the window in UTC time.
  /// Structure is documented below.
  final InstanceMaintenanceWindowStartTime startTime;

  /// Creates a new [InstanceMaintenanceWindow].
  /// [dayOfWeek] Required. Day of the week for this MaintenanceWindow (in UTC).
  /// [startTime] Required. Start time of the window in UTC time.
  InstanceMaintenanceWindow({required this.dayOfWeek, required this.startTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'startTime': startTime.toMap(),
    };
  }

  factory InstanceMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenanceWindow(
      dayOfWeek: map['dayOfWeek'] as String,
      startTime: InstanceMaintenanceWindowStartTime.fromMap(
        (map['startTime'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
