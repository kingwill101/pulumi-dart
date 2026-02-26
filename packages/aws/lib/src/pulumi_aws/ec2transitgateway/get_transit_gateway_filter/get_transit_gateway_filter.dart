// ignore_for_file: unused_element, unnecessary_cast

class GetTransitGatewayFilter {
  /// Name of the field to filter by, as defined by the [underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGateways.html).
  final String name;

  /// List of one or more values for the filter.
  final List<String> values;

  GetTransitGatewayFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetTransitGatewayFilter.fromMap(Map<String, dynamic> map) {
    return GetTransitGatewayFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
