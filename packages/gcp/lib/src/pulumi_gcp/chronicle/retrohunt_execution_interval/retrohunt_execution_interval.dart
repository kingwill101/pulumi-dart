// ignore_for_file: unused_element, unnecessary_cast

class RetrohuntExecutionInterval {
  /// Optional. Exclusive end of the interval.
  /// If specified, a Timestamp matching this interval will have to be before the
  /// end.
  final String? endTime;

  /// Optional. Inclusive start of the interval.
  /// If specified, a Timestamp matching this interval will have to be the same
  /// or after the start.
  final String? startTime;

  RetrohuntExecutionInterval({
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

  factory RetrohuntExecutionInterval.fromMap(Map<String, dynamic> map) {
    return RetrohuntExecutionInterval(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
