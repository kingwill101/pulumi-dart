// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersRelatedFindingsProductArn {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersRelatedFindingsProductArn].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersRelatedFindingsProductArn({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersRelatedFindingsProductArn.fromMap(Map<String, dynamic> map) {
    return InsightFiltersRelatedFindingsProductArn(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

