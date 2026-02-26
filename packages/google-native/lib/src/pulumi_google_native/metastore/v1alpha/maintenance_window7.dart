// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_window_day_of_week3.dart';

/// Maintenance window. This specifies when Dataproc Metastore may perform system maintenance operation to the service.
class MaintenanceWindow7 {
  /// The day of week, when the window starts.
  final MaintenanceWindowDayOfWeek3? dayOfWeek;

  /// The hour of day (0-23) when the window starts.
  final int? hourOfDay;

  MaintenanceWindow7({
    this.dayOfWeek,
    this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayOfWeekValue = dayOfWeek;
    if (dayOfWeekValue != null) {
      map['dayOfWeek'] = dayOfWeekValue.value;
    }
    final hourOfDayValue = hourOfDay;
    if (hourOfDayValue != null) {
      map['hourOfDay'] = hourOfDayValue;
    }
    return map;
  }

  factory MaintenanceWindow7.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindow7(
      dayOfWeek: map['dayOfWeek'] == null
          ? null
          : MaintenanceWindowDayOfWeek3.fromValue(map['dayOfWeek'] as String),
      hourOfDay: map['hourOfDay'] == null ? null : map['hourOfDay'] as int,
    );
  }
}
