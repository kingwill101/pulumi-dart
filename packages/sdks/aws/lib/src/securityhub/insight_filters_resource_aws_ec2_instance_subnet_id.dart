// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersResourceAwsEc2InstanceSubnetId {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersResourceAwsEc2InstanceSubnetId].
  /// [comparison] Required.
  /// [value] Required.
  const InsightFiltersResourceAwsEc2InstanceSubnetId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersResourceAwsEc2InstanceSubnetId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceAwsEc2InstanceSubnetId(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
