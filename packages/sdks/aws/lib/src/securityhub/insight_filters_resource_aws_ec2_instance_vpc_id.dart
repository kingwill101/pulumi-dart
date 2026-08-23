// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersResourceAwsEc2InstanceVpcId {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersResourceAwsEc2InstanceVpcId].
  /// [comparison] Required.
  /// [value] Required.
  const InsightFiltersResourceAwsEc2InstanceVpcId({
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
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
