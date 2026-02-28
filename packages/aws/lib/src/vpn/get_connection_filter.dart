// ignore_for_file: unused_element, unnecessary_cast

class GetConnectionFilter {
  /// Name of the filter field. Valid values can be found in the [EC2 `DescribeVPNConnections` API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html).
  final String name;

  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  /// Creates a new [GetConnectionFilter].
  /// [name] Name of the filter field. Valid values can be found in the [EC2 `DescribeVPNConnections` API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetConnectionFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetConnectionFilter.fromMap(Map<String, dynamic> map) {
    return GetConnectionFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
