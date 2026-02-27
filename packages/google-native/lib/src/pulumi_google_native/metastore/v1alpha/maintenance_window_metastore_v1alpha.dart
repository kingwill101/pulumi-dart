// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_window_day_of_week_metastore_v1alpha.dart';

/// Maintenance window. This specifies when Dataproc Metastore may perform system maintenance operation to the service.
class MaintenanceWindowMetastoreV1alpha {
  /// The day of week, when the window starts.
  final MaintenanceWindowDayOfWeekMetastoreV1alpha? dayOfWeek;

  /// The hour of day (0-23) when the window starts.
  final int? hourOfDay;

  MaintenanceWindowMetastoreV1alpha({
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

  factory MaintenanceWindowMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowMetastoreV1alpha(
      dayOfWeek: map['dayOfWeek'] == null
          ? null
          : MaintenanceWindowDayOfWeekMetastoreV1alpha.fromValue(
              map['dayOfWeek'] as String),
      hourOfDay: map['hourOfDay'] == null ? null : map['hourOfDay'] as int,
    );
  }
}
