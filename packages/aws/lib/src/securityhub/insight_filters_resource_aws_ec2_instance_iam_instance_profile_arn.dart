// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
