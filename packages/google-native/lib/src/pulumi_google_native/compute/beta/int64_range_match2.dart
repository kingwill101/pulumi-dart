// ignore_for_file: unused_element, unnecessary_cast

/// HttpRouteRuleMatch criteria for field values that must stay within the specified integer range.
class Int64RangeMatch2 {
  /// The end of the range (exclusive) in signed long integer format.
  final String? rangeEnd;

  /// The start of the range (inclusive) in signed long integer format.
  final String? rangeStart;

  Int64RangeMatch2({
    this.rangeEnd,
    this.rangeStart,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rangeEndValue = rangeEnd;
    if (rangeEndValue != null) {
      map['rangeEnd'] = rangeEndValue;
    }
    final rangeStartValue = rangeStart;
    if (rangeStartValue != null) {
      map['rangeStart'] = rangeStartValue;
    }
    return map;
  }

  factory Int64RangeMatch2.fromMap(Map<String, dynamic> map) {
    return Int64RangeMatch2(
      rangeEnd: map['rangeEnd'] == null ? null : map['rangeEnd'] as String,
      rangeStart:
          map['rangeStart'] == null ? null : map['rangeStart'] as String,
    );
  }
}
