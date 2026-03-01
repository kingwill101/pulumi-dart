// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaInspectorScore {
  /// (Optional) Lower bound of the range, inclusive.
  final double lowerInclusive;

  /// (Optional) Upper bound of the range, inclusive.
  final double upperInclusive;

  /// Creates a new [FilterFilterCriteriaInspectorScore].
  /// [lowerInclusive] (Optional) Lower bound of the range, inclusive.
  /// [upperInclusive] (Optional) Upper bound of the range, inclusive.
  FilterFilterCriteriaInspectorScore({
    required this.lowerInclusive,
    required this.upperInclusive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lowerInclusive': lowerInclusive,
      'upperInclusive': upperInclusive,
    };
  }

  factory FilterFilterCriteriaInspectorScore.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaInspectorScore(
      lowerInclusive: map['lowerInclusive'] as double,
      upperInclusive: map['upperInclusive'] as double,
    );
  }
}
