// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_day_of_week_type.dart';

/// Start time of a 30-minute weekly maintenance window.
class AmlFilesystemMaintenanceWindow {
  /// Day of the week on which the maintenance window will occur.
  final MaintenanceDayOfWeekType? dayOfWeek;
  /// The time of day (in UTC) to start the maintenance window.
  final String? timeOfDayUTC;

  /// Creates a new [AmlFilesystemMaintenanceWindow].
  /// [dayOfWeek] Day of the week on which the maintenance window will occur.
  /// [timeOfDayUTC] The time of day (in UTC) to start the maintenance window.
  AmlFilesystemMaintenanceWindow({
    this.dayOfWeek,
    this.timeOfDayUTC,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek == null ? null : dayOfWeek!.value,
      'timeOfDayUTC': ?timeOfDayUTC,
    };
  }

  factory AmlFilesystemMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemMaintenanceWindow(
      dayOfWeek: map['dayOfWeek'] == null ? null : MaintenanceDayOfWeekType.fromValue(map['dayOfWeek'] as String),
      timeOfDayUTC: map['timeOfDayUTC'] == null ? null : map['timeOfDayUTC'] as String,
    );
  }
}

