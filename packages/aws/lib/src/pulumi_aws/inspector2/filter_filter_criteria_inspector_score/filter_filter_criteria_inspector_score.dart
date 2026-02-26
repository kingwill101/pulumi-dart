// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaInspectorScore {
  /// (Optional) Lower bound of the range, inclusive.
  final double lowerInclusive;

  /// (Optional) Upper bound of the range, inclusive.
  final double upperInclusive;

  FilterFilterCriteriaInspectorScore({
    required this.lowerInclusive,
    required this.upperInclusive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lowerInclusive'] = lowerInclusive;
    map['upperInclusive'] = upperInclusive;
    return map;
  }

  factory FilterFilterCriteriaInspectorScore.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaInspectorScore(
      lowerInclusive: map['lowerInclusive'] as double,
      upperInclusive: map['upperInclusive'] as double,
    );
  }
}
