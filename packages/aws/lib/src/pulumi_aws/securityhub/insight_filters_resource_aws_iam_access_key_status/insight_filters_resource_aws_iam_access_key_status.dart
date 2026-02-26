// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceAwsIamAccessKeyStatus {
  final String comparison;
  final String value;

  InsightFiltersResourceAwsIamAccessKeyStatus({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersResourceAwsIamAccessKeyStatus.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersResourceAwsIamAccessKeyStatus(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
