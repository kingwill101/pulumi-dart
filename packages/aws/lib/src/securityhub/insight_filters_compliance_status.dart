// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersComplianceStatus {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersComplianceStatus].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersComplianceStatus({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersComplianceStatus.fromMap(Map<String, dynamic> map) {
    return InsightFiltersComplianceStatus(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

