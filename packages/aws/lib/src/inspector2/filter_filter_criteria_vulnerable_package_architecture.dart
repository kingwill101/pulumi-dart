// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaVulnerablePackageArchitecture {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final String comparison;

  /// (Required) The value to filter on.
  final String value;

  /// Creates a new [FilterFilterCriteriaVulnerablePackageArchitecture].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaVulnerablePackageArchitecture({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory FilterFilterCriteriaVulnerablePackageArchitecture.fromMap(
    Map<String, dynamic> map,
  ) {
    return FilterFilterCriteriaVulnerablePackageArchitecture(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
