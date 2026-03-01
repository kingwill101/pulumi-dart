// ignore_for_file: unused_element, unnecessary_cast

/// HttpRouteRuleMatch criteria for field values that must stay within the specified integer range.
class Int64RangeMatchResponseComputeV1 {
  /// The end of the range (exclusive) in signed long integer format.
  final String rangeEnd;

  /// The start of the range (inclusive) in signed long integer format.
  final String rangeStart;

  /// Creates a new [Int64RangeMatchResponseComputeV1].
  /// [rangeEnd] The end of the range (exclusive) in signed long integer format.
  /// [rangeStart] The start of the range (inclusive) in signed long integer format.
  Int64RangeMatchResponseComputeV1({
    required this.rangeEnd,
    required this.rangeStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'rangeEnd': rangeEnd, 'rangeStart': rangeStart};
  }

  factory Int64RangeMatchResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return Int64RangeMatchResponseComputeV1(
      rangeEnd: map['rangeEnd'] as String,
      rangeStart: map['rangeStart'] as String,
    );
  }
}
