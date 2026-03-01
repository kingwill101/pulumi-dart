// ignore_for_file: unused_element, unnecessary_cast


class FilterFilterCriteriaVulnerablePackageSourceLayerHash {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final String comparison;
  /// (Required) The value to filter on.
  final String value;

  /// Creates a new [FilterFilterCriteriaVulnerablePackageSourceLayerHash].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaVulnerablePackageSourceLayerHash({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory FilterFilterCriteriaVulnerablePackageSourceLayerHash.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaVulnerablePackageSourceLayerHash(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

