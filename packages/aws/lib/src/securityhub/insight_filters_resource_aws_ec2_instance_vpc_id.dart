// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersResourceAwsEc2InstanceVpcId {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceAwsEc2InstanceVpcId].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceAwsEc2InstanceVpcId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersResourceAwsEc2InstanceVpcId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceAwsEc2InstanceVpcId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

