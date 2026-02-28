// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaEpssScore {
  /// (Optional) Lower bound of the range, inclusive.
  final double lowerInclusive;

  /// (Optional) Upper bound of the range, inclusive.
  final double upperInclusive;

  /// Creates a new [FilterFilterCriteriaEpssScore].
  /// [lowerInclusive] (Optional) Lower bound of the range, inclusive.
  /// [upperInclusive] (Optional) Upper bound of the range, inclusive.
  FilterFilterCriteriaEpssScore({
    required this.lowerInclusive,
    required this.upperInclusive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lowerInclusive'] = lowerInclusive;
    map['upperInclusive'] = upperInclusive;
    return map;
  }

  factory FilterFilterCriteriaEpssScore.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaEpssScore(
      lowerInclusive: map['lowerInclusive'] as double,
      upperInclusive: map['upperInclusive'] as double,
    );
  }
}
