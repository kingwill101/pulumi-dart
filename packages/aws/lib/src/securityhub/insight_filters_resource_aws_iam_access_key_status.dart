// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceAwsIamAccessKeyStatus {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceAwsIamAccessKeyStatus].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceAwsIamAccessKeyStatus({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersResourceAwsIamAccessKeyStatus.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightFiltersResourceAwsIamAccessKeyStatus(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
