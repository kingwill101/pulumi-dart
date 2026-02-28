// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersResourceAwsIamAccessKeyUserName {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceAwsIamAccessKeyUserName].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceAwsIamAccessKeyUserName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersResourceAwsIamAccessKeyUserName.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceAwsIamAccessKeyUserName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

