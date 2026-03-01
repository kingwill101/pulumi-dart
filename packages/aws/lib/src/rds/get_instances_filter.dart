// ignore_for_file: unused_element, unnecessary_cast

class GetInstancesFilter {
  /// Name of the filter field. Valid values can be found in the [RDS DescribeDBClusters API Reference](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBClusters.html) or [RDS DescribeDBInstances API Reference](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBInstances.html).
  final String name;

  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  /// Creates a new [GetInstancesFilter].
  /// [name] Name of the filter field. Valid values can be found in the [RDS DescribeDBClusters API Reference](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBClusters.html) or [RDS DescribeDBInstances API Reference](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBInstances.html).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetInstancesFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetInstancesFilter.fromMap(Map<String, dynamic> map) {
    return GetInstancesFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
