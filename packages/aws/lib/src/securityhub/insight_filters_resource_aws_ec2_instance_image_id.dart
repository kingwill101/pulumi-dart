// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceAwsEc2InstanceImageId {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceAwsEc2InstanceImageId].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceAwsEc2InstanceImageId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersResourceAwsEc2InstanceImageId.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersResourceAwsEc2InstanceImageId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
