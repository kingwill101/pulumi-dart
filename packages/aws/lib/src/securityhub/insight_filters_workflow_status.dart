// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersWorkflowStatus {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersWorkflowStatus].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersWorkflowStatus({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersWorkflowStatus.fromMap(Map<String, dynamic> map) {
    return InsightFiltersWorkflowStatus(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
