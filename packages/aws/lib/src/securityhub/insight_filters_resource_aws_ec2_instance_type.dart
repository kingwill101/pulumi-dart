// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceAwsEc2InstanceType {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceAwsEc2InstanceType].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceAwsEc2InstanceType({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersResourceAwsEc2InstanceType.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersResourceAwsEc2InstanceType(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
