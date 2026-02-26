// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaPortRange {
  /// (Required) The beginning of the port range, inclusive.
  final int beginInclusive;

  /// (Required) The end of the port range, inclusive.
  final int endInclusive;

  FilterFilterCriteriaPortRange({
    required this.beginInclusive,
    required this.endInclusive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['beginInclusive'] = beginInclusive;
    map['endInclusive'] = endInclusive;
    return map;
  }

  factory FilterFilterCriteriaPortRange.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaPortRange(
      beginInclusive: map['beginInclusive'] as int,
      endInclusive: map['endInclusive'] as int,
    );
  }
}
