// ignore_for_file: unused_element, unnecessary_cast

/// HttpRouteRuleMatch criteria for field values that must stay within the specified integer range.
class Int64RangeMatchResponse2 {
  /// The end of the range (exclusive) in signed long integer format.
  final String rangeEnd;

  /// The start of the range (inclusive) in signed long integer format.
  final String rangeStart;

  Int64RangeMatchResponse2({
    required this.rangeEnd,
    required this.rangeStart,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rangeEnd'] = rangeEnd;
    map['rangeStart'] = rangeStart;
    return map;
  }

  factory Int64RangeMatchResponse2.fromMap(Map<String, dynamic> map) {
    return Int64RangeMatchResponse2(
      rangeEnd: map['rangeEnd'] as String,
      rangeStart: map['rangeStart'] as String,
    );
  }
}
