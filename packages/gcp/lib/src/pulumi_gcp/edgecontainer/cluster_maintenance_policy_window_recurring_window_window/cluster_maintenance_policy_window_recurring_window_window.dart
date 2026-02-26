// ignore_for_file: unused_element, unnecessary_cast

class ClusterMaintenancePolicyWindowRecurringWindowWindow {
  /// The time that the window ends. The end time must take place after the
  /// start time.
  final String? endTime;

  /// The time that the window first starts.
  final String? startTime;

  ClusterMaintenancePolicyWindowRecurringWindowWindow({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory ClusterMaintenancePolicyWindowRecurringWindowWindow.fromMap(
      Map<String, dynamic> map) {
    return ClusterMaintenancePolicyWindowRecurringWindowWindow(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
