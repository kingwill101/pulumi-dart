// ignore_for_file: unused_element, unnecessary_cast


class FilterFilterCriteriaCodeRepositoryProjectName {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final String comparison;
  /// (Required) The value to filter on.
  final String value;

  /// Creates a new [FilterFilterCriteriaCodeRepositoryProjectName].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaCodeRepositoryProjectName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory FilterFilterCriteriaCodeRepositoryProjectName.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaCodeRepositoryProjectName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

