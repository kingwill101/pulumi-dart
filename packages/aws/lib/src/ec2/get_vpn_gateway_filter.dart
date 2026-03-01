// ignore_for_file: unused_element, unnecessary_cast

class GetVpnGatewayFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnGateways.html).
  final String name;

  /// Set of values that are accepted for the given field.
  /// A VPN Gateway will be selected if any one of the given values matches.
  final List<String> values;

  /// Creates a new [GetVpnGatewayFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  GetVpnGatewayFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetVpnGatewayFilter.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
