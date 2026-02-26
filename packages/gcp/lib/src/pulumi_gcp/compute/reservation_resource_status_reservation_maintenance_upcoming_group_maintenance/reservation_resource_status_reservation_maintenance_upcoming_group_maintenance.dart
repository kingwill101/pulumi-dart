// ignore_for_file: unused_element, unnecessary_cast

class ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance {
  /// (Output)
  /// Indicates if the maintenance can be customer triggered.
  final bool? canReschedule;

  /// (Output)
  /// The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  final String? latestWindowStartTime;

  /// (Output)
  /// Indicates whether the UpcomingMaintenance will be triggered on VM shutdown.
  final bool? maintenanceOnShutdown;

  /// (Output)
  /// The reasons for the maintenance. Only valid for vms.
  final List<String>? maintenanceReasons;

  /// (Output)
  /// Status of the maintenance.
  final String? maintenanceStatus;

  /// (Output)
  /// Defines the type of maintenance.
  final String? type;

  /// (Output)
  /// The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  final String? windowEndTime;

  /// (Output)
  /// The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  final String? windowStartTime;

  ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance({
    this.canReschedule,
    this.latestWindowStartTime,
    this.maintenanceOnShutdown,
    this.maintenanceReasons,
    this.maintenanceStatus,
    this.type,
    this.windowEndTime,
    this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final canRescheduleValue = canReschedule;
    if (canRescheduleValue != null) {
      map['canReschedule'] = canRescheduleValue;
    }
    final latestWindowStartTimeValue = latestWindowStartTime;
    if (latestWindowStartTimeValue != null) {
      map['latestWindowStartTime'] = latestWindowStartTimeValue;
    }
    final maintenanceOnShutdownValue = maintenanceOnShutdown;
    if (maintenanceOnShutdownValue != null) {
      map['maintenanceOnShutdown'] = maintenanceOnShutdownValue;
    }
    final maintenanceReasonsValue = maintenanceReasons;
    if (maintenanceReasonsValue != null) {
      map['maintenanceReasons'] = maintenanceReasonsValue;
    }
    final maintenanceStatusValue = maintenanceStatus;
    if (maintenanceStatusValue != null) {
      map['maintenanceStatus'] = maintenanceStatusValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final windowEndTimeValue = windowEndTime;
    if (windowEndTimeValue != null) {
      map['windowEndTime'] = windowEndTimeValue;
    }
    final windowStartTimeValue = windowStartTime;
    if (windowStartTimeValue != null) {
      map['windowStartTime'] = windowStartTimeValue;
    }
    return map;
  }

  factory ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance.fromMap(
      Map<String, dynamic> map) {
    return ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance(
      canReschedule:
          map['canReschedule'] == null ? null : map['canReschedule'] as bool,
      latestWindowStartTime: map['latestWindowStartTime'] == null
          ? null
          : map['latestWindowStartTime'] as String,
      maintenanceOnShutdown: map['maintenanceOnShutdown'] == null
          ? null
          : map['maintenanceOnShutdown'] as bool,
      maintenanceReasons: map['maintenanceReasons'] == null
          ? null
          : (map['maintenanceReasons'] as List).cast<String>(),
      maintenanceStatus: map['maintenanceStatus'] == null
          ? null
          : map['maintenanceStatus'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      windowEndTime:
          map['windowEndTime'] == null ? null : map['windowEndTime'] as String,
      windowStartTime: map['windowStartTime'] == null
          ? null
          : map['windowStartTime'] as String,
    );
  }
}
