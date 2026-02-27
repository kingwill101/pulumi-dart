// ignore_for_file: unused_element, unnecessary_cast

/// Any scheduled maintenance for this instance.
class SqlScheduledMaintenanceResponseSqladminV1beta4 {
  final bool canDefer;

  /// If the scheduled maintenance can be rescheduled.
  final bool canReschedule;

  /// Maintenance cannot be rescheduled to start beyond this deadline.
  final String scheduleDeadlineTime;

  /// The start time of any upcoming scheduled maintenance for this instance.
  final String startTime;

  SqlScheduledMaintenanceResponseSqladminV1beta4({
    required this.canDefer,
    required this.canReschedule,
    required this.scheduleDeadlineTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canDefer'] = canDefer;
    map['canReschedule'] = canReschedule;
    map['scheduleDeadlineTime'] = scheduleDeadlineTime;
    map['startTime'] = startTime;
    return map;
  }

  factory SqlScheduledMaintenanceResponseSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return SqlScheduledMaintenanceResponseSqladminV1beta4(
      canDefer: map['canDefer'] as bool,
      canReschedule: map['canReschedule'] as bool,
      scheduleDeadlineTime: map['scheduleDeadlineTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
