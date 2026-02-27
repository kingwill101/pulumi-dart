// ignore_for_file: unused_element, unnecessary_cast

class AppQuietTime {
  /// The default end time for quiet time in ISO 8601 format. Required if `start` is set
  final String? end;

  /// The default start time for quiet time in ISO 8601 format. Required if `end` is set
  final String? start;

  AppQuietTime({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endValue = end;
    if (endValue != null) {
      map['end'] = endValue;
    }
    final startValue = start;
    if (startValue != null) {
      map['start'] = startValue;
    }
    return map;
  }

  factory AppQuietTime.fromMap(Map<String, dynamic> map) {
    return AppQuietTime(
      end: map['end'] == null ? null : map['end'] as String,
      start: map['start'] == null ? null : map['start'] as String,
    );
  }
}
