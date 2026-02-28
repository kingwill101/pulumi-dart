// ignore_for_file: unused_element, unnecessary_cast

import 'upcoming_maintenance_time_window_response.dart';

/// Upcoming Maintenance notification information.
class UpcomingMaintenanceResponse {
  /// Indicates if the maintenance can be customer triggered.
  final bool canReschedule;
  /// The date when the maintenance will take place. This value is in RFC3339 text format. DEPRECATED: Use window_start_time instead.
  final String date;
  /// The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  final String latestWindowStartTime;
  final String maintenanceStatus;
  /// The start time window of the maintenance disruption. DEPRECATED: Use window_start_time instead. TimeWindow is a container for two strings that represent timestamps in "yyyy-MM-dd'T'HH:mm:ssZ" text format.
  final UpcomingMaintenanceTimeWindowResponse startTimeWindow;
  /// The time when the maintenance will take place. This value is in RFC3339 text format. DEPRECATED: Use window_start_time instead.
  final String time;
  /// Defines the type of maintenance.
  final String type;
  /// The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  final String windowEndTime;
  /// The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  final String windowStartTime;

  /// Creates a new [UpcomingMaintenanceResponse].
  /// [canReschedule] Indicates if the maintenance can be customer triggered.
  /// [date] The date when the maintenance will take place. This value is in RFC3339 text format. DEPRECATED: Use window_start_time instead.
  /// [latestWindowStartTime] The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  /// [maintenanceStatus] Required.
  /// [startTimeWindow] The start time window of the maintenance disruption. DEPRECATED: Use window_start_time instead. TimeWindow is a container for two strings that represent timestamps in "yyyy-MM-dd'T'HH:mm:ssZ" text format.
  /// [time] The time when the maintenance will take place. This value is in RFC3339 text format. DEPRECATED: Use window_start_time instead.
  /// [type] Defines the type of maintenance.
  /// [windowEndTime] The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  /// [windowStartTime] The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  UpcomingMaintenanceResponse({
    required this.canReschedule,
    required this.date,
    required this.latestWindowStartTime,
    required this.maintenanceStatus,
    required this.startTimeWindow,
    required this.time,
    required this.type,
    required this.windowEndTime,
    required this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canReschedule': canReschedule,
      'date': date,
      'latestWindowStartTime': latestWindowStartTime,
      'maintenanceStatus': maintenanceStatus,
      'startTimeWindow': startTimeWindow.toMap(),
      'time': time,
      'type': type,
      'windowEndTime': windowEndTime,
      'windowStartTime': windowStartTime,
    };
  }

  factory UpcomingMaintenanceResponse.fromMap(Map<String, dynamic> map) {
    return UpcomingMaintenanceResponse(
      canReschedule: map['canReschedule'] as bool,
      date: map['date'] as String,
      latestWindowStartTime: map['latestWindowStartTime'] as String,
      maintenanceStatus: map['maintenanceStatus'] as String,
      startTimeWindow: UpcomingMaintenanceTimeWindowResponse.fromMap((map['startTimeWindow'] as Map).cast<String, dynamic>()),
      time: map['time'] as String,
      type: map['type'] as String,
      windowEndTime: map['windowEndTime'] as String,
      windowStartTime: map['windowStartTime'] as String,
    );
  }
}

