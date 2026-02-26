// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceAwsEc2InstanceKeyName {
  final String comparison;
  final String value;

  InsightFiltersResourceAwsEc2InstanceKeyName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersResourceAwsEc2InstanceKeyName.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersResourceAwsEc2InstanceKeyName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
