// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaVendorSeverity {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final String comparison;

  /// (Required) The value to filter on.
  final String value;

  /// Creates a new [FilterFilterCriteriaVendorSeverity].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaVendorSeverity({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory FilterFilterCriteriaVendorSeverity.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaVendorSeverity(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
