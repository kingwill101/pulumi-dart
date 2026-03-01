// ignore_for_file: unused_element, unnecessary_cast

/// Any scheduled maintenance for this instance.
class SqlScheduledMaintenanceSqladminV1beta4 {
  final bool? canDefer;

  /// If the scheduled maintenance can be rescheduled.
  final bool? canReschedule;

  /// Maintenance cannot be rescheduled to start beyond this deadline.
  final String? scheduleDeadlineTime;

  /// The start time of any upcoming scheduled maintenance for this instance.
  final String? startTime;

  /// Creates a new [SqlScheduledMaintenanceSqladminV1beta4].
  /// [canDefer] Optional.
  /// [canReschedule] If the scheduled maintenance can be rescheduled.
  /// [scheduleDeadlineTime] Maintenance cannot be rescheduled to start beyond this deadline.
  /// [startTime] The start time of any upcoming scheduled maintenance for this instance.
  SqlScheduledMaintenanceSqladminV1beta4({
    this.canDefer,
    this.canReschedule,
    this.scheduleDeadlineTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canDefer': ?canDefer,
      'canReschedule': ?canReschedule,
      'scheduleDeadlineTime': ?scheduleDeadlineTime,
      'startTime': ?startTime,
    };
  }

  factory SqlScheduledMaintenanceSqladminV1beta4.fromMap(
    Map<String, dynamic> map,
  ) {
    return SqlScheduledMaintenanceSqladminV1beta4(
      canDefer: map['canDefer'] == null ? null : map['canDefer'] as bool,
      canReschedule: map['canReschedule'] == null
          ? null
          : map['canReschedule'] as bool,
      scheduleDeadlineTime: map['scheduleDeadlineTime'] == null
          ? null
          : map['scheduleDeadlineTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
