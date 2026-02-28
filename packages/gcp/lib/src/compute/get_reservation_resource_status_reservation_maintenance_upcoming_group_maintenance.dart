// ignore_for_file: unused_element, unnecessary_cast

class GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance {
  /// Indicates if the maintenance can be customer triggered.
  final bool canReschedule;

  /// The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  final String latestWindowStartTime;

  /// Indicates whether the UpcomingMaintenance will be triggered on VM shutdown.
  final bool maintenanceOnShutdown;

  /// The reasons for the maintenance. Only valid for vms.
  final List<String> maintenanceReasons;

  /// Status of the maintenance.
  final String maintenanceStatus;

  /// Defines the type of maintenance.
  final String type;

  /// The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  final String windowEndTime;

  /// The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  final String windowStartTime;

  /// Creates a new [GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance].
  /// [canReschedule] Indicates if the maintenance can be customer triggered.
  /// [latestWindowStartTime] The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  /// [maintenanceOnShutdown] Indicates whether the UpcomingMaintenance will be triggered on VM shutdown.
  /// [maintenanceReasons] The reasons for the maintenance. Only valid for vms.
  /// [maintenanceStatus] Status of the maintenance.
  /// [type] Defines the type of maintenance.
  /// [windowEndTime] The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  /// [windowStartTime] The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance({
    required this.canReschedule,
    required this.latestWindowStartTime,
    required this.maintenanceOnShutdown,
    required this.maintenanceReasons,
    required this.maintenanceStatus,
    required this.type,
    required this.windowEndTime,
    required this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canReschedule'] = canReschedule;
    map['latestWindowStartTime'] = latestWindowStartTime;
    map['maintenanceOnShutdown'] = maintenanceOnShutdown;
    map['maintenanceReasons'] = maintenanceReasons;
    map['maintenanceStatus'] = maintenanceStatus;
    map['type'] = type;
    map['windowEndTime'] = windowEndTime;
    map['windowStartTime'] = windowStartTime;
    return map;
  }

  factory GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance.fromMap(
      Map<String, dynamic> map) {
    return GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance(
      canReschedule: map['canReschedule'] as bool,
      latestWindowStartTime: map['latestWindowStartTime'] as String,
      maintenanceOnShutdown: map['maintenanceOnShutdown'] as bool,
      maintenanceReasons: (map['maintenanceReasons'] as List).cast<String>(),
      maintenanceStatus: map['maintenanceStatus'] as String,
      type: map['type'] as String,
      windowEndTime: map['windowEndTime'] as String,
      windowStartTime: map['windowStartTime'] as String,
    );
  }
}
