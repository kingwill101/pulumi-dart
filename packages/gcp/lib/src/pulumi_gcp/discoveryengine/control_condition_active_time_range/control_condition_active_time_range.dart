// ignore_for_file: unused_element, unnecessary_cast

class ControlConditionActiveTimeRange {
  /// The end time of the active time range.
  final String? endTime;

  /// The start time of the active time range.
  final String? startTime;

  ControlConditionActiveTimeRange({
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

  factory ControlConditionActiveTimeRange.fromMap(Map<String, dynamic> map) {
    return ControlConditionActiveTimeRange(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
