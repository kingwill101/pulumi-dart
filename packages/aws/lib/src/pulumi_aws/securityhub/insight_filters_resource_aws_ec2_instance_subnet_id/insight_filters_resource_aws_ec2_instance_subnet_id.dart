// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceAwsEc2InstanceSubnetId {
  final String comparison;
  final String value;

  InsightFiltersResourceAwsEc2InstanceSubnetId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersResourceAwsEc2InstanceSubnetId.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersResourceAwsEc2InstanceSubnetId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
