// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaResourceType {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final String comparison;

  /// (Required) The value to filter on.
  final String value;

  /// Creates a new [FilterFilterCriteriaResourceType].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaResourceType({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory FilterFilterCriteriaResourceType.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaResourceType(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
