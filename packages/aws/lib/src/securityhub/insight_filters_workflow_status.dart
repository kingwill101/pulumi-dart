// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersWorkflowStatus {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersWorkflowStatus].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersWorkflowStatus({required this.comparison, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersWorkflowStatus.fromMap(Map<String, dynamic> map) {
    return InsightFiltersWorkflowStatus(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
