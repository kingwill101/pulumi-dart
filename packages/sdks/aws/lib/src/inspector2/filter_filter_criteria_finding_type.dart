// ignore_for_file: unused_element, unnecessary_cast


class FilterFilterCriteriaFindingType {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final String comparison;
  /// (Required) The value to filter on.
  final String value;

  /// Creates a new [FilterFilterCriteriaFindingType].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaFindingType({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory FilterFilterCriteriaFindingType.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaFindingType(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

