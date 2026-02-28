// ignore_for_file: unused_element, unnecessary_cast

/// HttpRouteRuleMatch criteria for field values that must stay within the specified integer range.
class Int64RangeMatchResponse {
  /// The end of the range (exclusive) in signed long integer format.
  final String rangeEnd;

  /// The start of the range (inclusive) in signed long integer format.
  final String rangeStart;

  /// Creates a new [Int64RangeMatchResponse].
  /// [rangeEnd] The end of the range (exclusive) in signed long integer format.
  /// [rangeStart] The start of the range (inclusive) in signed long integer format.
  Int64RangeMatchResponse({
    required this.rangeEnd,
    required this.rangeStart,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rangeEnd'] = rangeEnd;
    map['rangeStart'] = rangeStart;
    return map;
  }

  factory Int64RangeMatchResponse.fromMap(Map<String, dynamic> map) {
    return Int64RangeMatchResponse(
      rangeEnd: map['rangeEnd'] as String,
      rangeStart: map['rangeStart'] as String,
    );
  }
}
