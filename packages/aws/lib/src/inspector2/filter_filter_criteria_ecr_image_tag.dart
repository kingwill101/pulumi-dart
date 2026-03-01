// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaEcrImageTag {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final String comparison;

  /// (Required) The value to filter on.
  final String value;

  /// Creates a new [FilterFilterCriteriaEcrImageTag].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaEcrImageTag({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory FilterFilterCriteriaEcrImageTag.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaEcrImageTag(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
