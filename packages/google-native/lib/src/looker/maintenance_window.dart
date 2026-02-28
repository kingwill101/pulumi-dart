// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_window_day_of_week.dart';
import 'time_of_day.dart';

/// Specifies the recurring maintenance window.
class MaintenanceWindow {
  /// Day of the week for this MaintenanceWindow (in UTC).
  final MaintenanceWindowDayOfWeek dayOfWeek;
  /// Time in UTC when the period starts. Maintenance will be scheduled within 60 minutes.
  final TimeOfDay startTime;

  /// Creates a new [MaintenanceWindow].
  /// [dayOfWeek] Day of the week for this MaintenanceWindow (in UTC).
  /// [startTime] Time in UTC when the period starts. Maintenance will be scheduled within 60 minutes.
  MaintenanceWindow({
    required this.dayOfWeek,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek.value,
      'startTime': startTime.toMap(),
    };
  }

  factory MaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindow(
      dayOfWeek: MaintenanceWindowDayOfWeek.fromValue(map['dayOfWeek'] as String),
      startTime: TimeOfDay.fromMap((map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}

