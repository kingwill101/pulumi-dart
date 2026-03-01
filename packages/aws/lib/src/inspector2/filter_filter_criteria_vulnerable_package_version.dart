// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaVulnerablePackageVersion {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final String comparison;

  /// (Required) The value to filter on.
  final String value;

  /// Creates a new [FilterFilterCriteriaVulnerablePackageVersion].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaVulnerablePackageVersion({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory FilterFilterCriteriaVulnerablePackageVersion.fromMap(
    Map<String, dynamic> map,
  ) {
    return FilterFilterCriteriaVulnerablePackageVersion(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
