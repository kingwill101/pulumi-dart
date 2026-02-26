// ignore_for_file: unused_element, unnecessary_cast

/// Time window specified for daily maintenance operations.
class DailyMaintenanceWindow {
  /// Time within the maintenance window to start the maintenance operations. Time format should be in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format "HH:MM", where HH : [00-23] and MM : [00-59] GMT.
  final String? startTime;

  DailyMaintenanceWindow({
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

  factory DailyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return DailyMaintenanceWindow(
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
