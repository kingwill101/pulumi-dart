// ignore_for_file: unused_element, unnecessary_cast

/// HttpRouteRuleMatch criteria for field values that must stay within the specified integer range.
class Int64RangeMatchComputeV1 {
  /// The end of the range (exclusive) in signed long integer format.
  final String? rangeEnd;

  /// The start of the range (inclusive) in signed long integer format.
  final String? rangeStart;

  /// Creates a new [Int64RangeMatchComputeV1].
  /// [rangeEnd] The end of the range (exclusive) in signed long integer format.
  /// [rangeStart] The start of the range (inclusive) in signed long integer format.
  Int64RangeMatchComputeV1({this.rangeEnd, this.rangeStart});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'rangeEnd': ?rangeEnd, 'rangeStart': ?rangeStart};
  }

  factory Int64RangeMatchComputeV1.fromMap(Map<String, dynamic> map) {
    return Int64RangeMatchComputeV1(
      rangeEnd: map['rangeEnd'] == null ? null : map['rangeEnd'] as String,
      rangeStart: map['rangeStart'] == null
          ? null
          : map['rangeStart'] as String,
    );
  }
}
