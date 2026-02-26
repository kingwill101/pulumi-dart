// ignore_for_file: unused_element, unnecessary_cast

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.
class Interval {
  /// Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will have to be before the end.
  final String? endTime;

  /// Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will have to be the same or after the start.
  final String? startTime;

  Interval({
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

  factory Interval.fromMap(Map<String, dynamic> map) {
    return Interval(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
