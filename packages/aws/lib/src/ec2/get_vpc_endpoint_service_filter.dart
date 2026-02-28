// ignore_for_file: unused_element, unnecessary_cast

class GetVpcEndpointServiceFilter {
  /// Name of the filter field. Valid values can be found in the [EC2 DescribeVpcEndpointServices API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpcEndpointServices.html).
  final String name;

  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  /// Creates a new [GetVpcEndpointServiceFilter].
  /// [name] Name of the filter field. Valid values can be found in the [EC2 DescribeVpcEndpointServices API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpcEndpointServices.html).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetVpcEndpointServiceFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetVpcEndpointServiceFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointServiceFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
