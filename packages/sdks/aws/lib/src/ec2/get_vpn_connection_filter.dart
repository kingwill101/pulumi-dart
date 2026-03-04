// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpnConnectionFilter {
  /// Name of the filter field. Valid values can be found in the [EC2 `DescribeVPNConnections` API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html).
  final pulumi.Input<String> name;

  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetVpnConnectionFilter].
  /// [name] Name of the filter field. Valid values can be found in the [EC2 `DescribeVPNConnections` API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetVpnConnectionFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetVpnConnectionFilter.fromMap(Map<String, dynamic> map) {
    return GetVpnConnectionFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
