// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaComponentId {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final String comparison;

  /// (Required) The value to filter on.
  final String value;

  FilterFilterCriteriaComponentId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory FilterFilterCriteriaComponentId.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaComponentId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
