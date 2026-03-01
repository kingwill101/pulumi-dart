// ignore_for_file: unused_element, unnecessary_cast

class GetMulticastDomainFilter {
  /// Name of the field to filter by, as defined by [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayMulticastDomains.html).
  final String name;

  /// Set of values that are accepted for the given field. A multicast domain will be selected if any one of the given values matches.
  final List<String> values;

  /// Creates a new [GetMulticastDomainFilter].
  /// [name] Name of the field to filter by, as defined by [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayMulticastDomains.html).
  /// [values] Set of values that are accepted for the given field. A multicast domain will be selected if any one of the given values matches.
  GetMulticastDomainFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetMulticastDomainFilter.fromMap(Map<String, dynamic> map) {
    return GetMulticastDomainFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
