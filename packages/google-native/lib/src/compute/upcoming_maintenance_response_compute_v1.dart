// ignore_for_file: unused_element, unnecessary_cast

/// Upcoming Maintenance notification information.
class UpcomingMaintenanceResponseComputeV1 {
  /// Indicates if the maintenance can be customer triggered.
  final bool canReschedule;

  /// The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  final String latestWindowStartTime;
  final String maintenanceStatus;

  /// Defines the type of maintenance.
  final String type;

  /// The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  final String windowEndTime;

  /// The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  final String windowStartTime;

  /// Creates a new [UpcomingMaintenanceResponseComputeV1].
  /// [canReschedule] Indicates if the maintenance can be customer triggered.
  /// [latestWindowStartTime] The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  /// [maintenanceStatus] Required.
  /// [type] Defines the type of maintenance.
  /// [windowEndTime] The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  /// [windowStartTime] The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  UpcomingMaintenanceResponseComputeV1({
    required this.canReschedule,
    required this.latestWindowStartTime,
    required this.maintenanceStatus,
    required this.type,
    required this.windowEndTime,
    required this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canReschedule'] = canReschedule;
    map['latestWindowStartTime'] = latestWindowStartTime;
    map['maintenanceStatus'] = maintenanceStatus;
    map['type'] = type;
    map['windowEndTime'] = windowEndTime;
    map['windowStartTime'] = windowStartTime;
    return map;
  }

  factory UpcomingMaintenanceResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return UpcomingMaintenanceResponseComputeV1(
      canReschedule: map['canReschedule'] as bool,
      latestWindowStartTime: map['latestWindowStartTime'] as String,
      maintenanceStatus: map['maintenanceStatus'] as String,
      type: map['type'] as String,
      windowEndTime: map['windowEndTime'] as String,
      windowStartTime: map['windowStartTime'] as String,
    );
  }
}
