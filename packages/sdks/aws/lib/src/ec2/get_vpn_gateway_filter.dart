// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpnGatewayFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnGateways.html).
  final pulumi.Input<String> name;
  /// Set of values that are accepted for the given field.
  /// A VPN Gateway will be selected if any one of the given values matches.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetVpnGatewayFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  const GetVpnGatewayFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetVpnGatewayFilter.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

