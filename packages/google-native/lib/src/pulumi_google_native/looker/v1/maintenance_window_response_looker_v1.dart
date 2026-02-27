// ignore_for_file: unused_element, unnecessary_cast

import 'time_of_day_response.dart';

/// Specifies the recurring maintenance window.
class MaintenanceWindowResponseLookerV1 {
  /// Day of the week for this MaintenanceWindow (in UTC).
  final String dayOfWeek;

  /// Time in UTC when the period starts. Maintenance will be scheduled within 60 minutes.
  final TimeOfDayResponse startTime;

  MaintenanceWindowResponseLookerV1({
    required this.dayOfWeek,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    map['startTime'] = startTime.toMap();
    return map;
  }

  factory MaintenanceWindowResponseLookerV1.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowResponseLookerV1(
      dayOfWeek: map['dayOfWeek'] as String,
      startTime: TimeOfDayResponse.fromMap(
          (map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
