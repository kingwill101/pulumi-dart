// ignore_for_file: unused_element, unnecessary_cast


class FilterFilterCriteriaTitle {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final String comparison;
  /// (Required) The value to filter on.
  final String value;

  /// Creates a new [FilterFilterCriteriaTitle].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaTitle({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory FilterFilterCriteriaTitle.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaTitle(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

