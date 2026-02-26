// ignore_for_file: unused_element, unnecessary_cast

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.
class IntervalResponse {
  /// Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will have to be before the end.
  final String endTime;

  /// Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will have to be the same or after the start.
  final String startTime;

  IntervalResponse({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['startTime'] = startTime;
    return map;
  }

  factory IntervalResponse.fromMap(Map<String, dynamic> map) {
    return IntervalResponse(
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
