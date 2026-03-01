// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersResourceAwsEc2InstanceKeyName {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceAwsEc2InstanceKeyName].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceAwsEc2InstanceKeyName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersResourceAwsEc2InstanceKeyName.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceAwsEc2InstanceKeyName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

