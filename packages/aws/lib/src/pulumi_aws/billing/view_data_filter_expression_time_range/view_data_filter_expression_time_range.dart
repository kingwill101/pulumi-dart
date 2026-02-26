// ignore_for_file: unused_element, unnecessary_cast

class ViewDataFilterExpressionTimeRange {
  /// Inclusive end date of the time range.
  final String beginDateInclusive;
  final String endDateInclusive;

  ViewDataFilterExpressionTimeRange({
    required this.beginDateInclusive,
    required this.endDateInclusive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['beginDateInclusive'] = beginDateInclusive;
    map['endDateInclusive'] = endDateInclusive;
    return map;
  }

  factory ViewDataFilterExpressionTimeRange.fromMap(Map<String, dynamic> map) {
    return ViewDataFilterExpressionTimeRange(
      beginDateInclusive: map['beginDateInclusive'] as String,
      endDateInclusive: map['endDateInclusive'] as String,
    );
  }
}
