// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_window_day_of_week.dart';

/// Maintenance window. This specifies when Dataproc Metastore may perform system maintenance operation to the service.
class MaintenanceWindow {
  /// The day of week, when the window starts.
  final MaintenanceWindowDayOfWeek? dayOfWeek;

  /// The hour of day (0-23) when the window starts.
  final int? hourOfDay;

  /// Creates a new [MaintenanceWindow].
  /// [dayOfWeek] The day of week, when the window starts.
  /// [hourOfDay] The hour of day (0-23) when the window starts.
  MaintenanceWindow({this.dayOfWeek, this.hourOfDay});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek == null ? null : dayOfWeek!.value,
      'hourOfDay': ?hourOfDay,
    };
  }

  factory MaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindow(
      dayOfWeek: map['dayOfWeek'] == null
          ? null
          : MaintenanceWindowDayOfWeek.fromValue(map['dayOfWeek'] as String),
      hourOfDay: map['hourOfDay'] == null ? null : map['hourOfDay'] as int,
    );
  }
}
