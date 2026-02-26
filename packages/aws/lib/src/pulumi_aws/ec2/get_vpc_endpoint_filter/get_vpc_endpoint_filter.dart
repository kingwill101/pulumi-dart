// ignore_for_file: unused_element, unnecessary_cast

class GetVpcEndpointFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpcEndpoints.html).
  final String name;

  /// Set of values that are accepted for the given field.
  /// A VPC Endpoint will be selected if any one of the given values matches.
  final List<String> values;

  GetVpcEndpointFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetVpcEndpointFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
