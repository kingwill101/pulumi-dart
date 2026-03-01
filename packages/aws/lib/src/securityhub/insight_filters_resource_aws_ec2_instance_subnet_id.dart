// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceAwsEc2InstanceSubnetId {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceAwsEc2InstanceSubnetId].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceAwsEc2InstanceSubnetId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersResourceAwsEc2InstanceSubnetId.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightFiltersResourceAwsEc2InstanceSubnetId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
