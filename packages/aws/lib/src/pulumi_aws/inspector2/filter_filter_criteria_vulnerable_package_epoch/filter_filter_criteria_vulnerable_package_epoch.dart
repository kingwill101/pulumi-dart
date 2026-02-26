// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaVulnerablePackageEpoch {
  /// (Optional) Lower bound of the range, inclusive.
  final double lowerInclusive;

  /// (Optional) Upper bound of the range, inclusive.
  final double upperInclusive;

  FilterFilterCriteriaVulnerablePackageEpoch({
    required this.lowerInclusive,
    required this.upperInclusive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lowerInclusive'] = lowerInclusive;
    map['upperInclusive'] = upperInclusive;
    return map;
  }

  factory FilterFilterCriteriaVulnerablePackageEpoch.fromMap(
      Map<String, dynamic> map) {
    return FilterFilterCriteriaVulnerablePackageEpoch(
      lowerInclusive: map['lowerInclusive'] as double,
      upperInclusive: map['upperInclusive'] as double,
    );
  }
}
