// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkInsightsPathFilter {
  /// Name of the filter field. Valid values can be found in the EC2 [`DescribeNetworkInsightsPaths`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkInsightsPaths.html) API Reference.
  final String name;
  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  /// Creates a new [GetNetworkInsightsPathFilter].
  /// [name] Name of the filter field. Valid values can be found in the EC2 [`DescribeNetworkInsightsPaths`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkInsightsPaths.html) API Reference.
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetNetworkInsightsPathFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetNetworkInsightsPathFilter.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsPathFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

