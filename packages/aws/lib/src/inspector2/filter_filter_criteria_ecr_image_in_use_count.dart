// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaEcrImageInUseCount {
  /// (Optional) Lower bound of the range, inclusive.
  final double lowerInclusive;

  /// (Optional) Upper bound of the range, inclusive.
  final double upperInclusive;

  /// Creates a new [FilterFilterCriteriaEcrImageInUseCount].
  /// [lowerInclusive] (Optional) Lower bound of the range, inclusive.
  /// [upperInclusive] (Optional) Upper bound of the range, inclusive.
  FilterFilterCriteriaEcrImageInUseCount({
    required this.lowerInclusive,
    required this.upperInclusive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lowerInclusive': lowerInclusive,
      'upperInclusive': upperInclusive,
    };
  }

  factory FilterFilterCriteriaEcrImageInUseCount.fromMap(
    Map<String, dynamic> map,
  ) {
    return FilterFilterCriteriaEcrImageInUseCount(
      lowerInclusive: map['lowerInclusive'] as double,
      upperInclusive: map['upperInclusive'] as double,
    );
  }
}
