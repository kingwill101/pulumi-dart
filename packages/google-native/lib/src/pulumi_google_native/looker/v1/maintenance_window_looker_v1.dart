// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_window_day_of_week.dart';
import 'time_of_day.dart';

/// Specifies the recurring maintenance window.
class MaintenanceWindowLookerV1 {
  /// Day of the week for this MaintenanceWindow (in UTC).
  final MaintenanceWindowDayOfWeek dayOfWeek;

  /// Time in UTC when the period starts. Maintenance will be scheduled within 60 minutes.
  final TimeOfDay startTime;

  MaintenanceWindowLookerV1({
    required this.dayOfWeek,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek.value;
    map['startTime'] = startTime.toMap();
    return map;
  }

  factory MaintenanceWindowLookerV1.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowLookerV1(
      dayOfWeek:
          MaintenanceWindowDayOfWeek.fromValue(map['dayOfWeek'] as String),
      startTime:
          TimeOfDay.fromMap((map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
