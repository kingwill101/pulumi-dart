// ignore_for_file: unused_element, unnecessary_cast

/// Time window specified for daily maintenance operations.
class DailyMaintenanceWindow2 {
  /// Time within the maintenance window to start the maintenance operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-59] GMT.
  final String? startTime;

  DailyMaintenanceWindow2({
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory DailyMaintenanceWindow2.fromMap(Map<String, dynamic> map) {
    return DailyMaintenanceWindow2(
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
