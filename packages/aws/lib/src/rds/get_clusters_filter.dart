// ignore_for_file: unused_element, unnecessary_cast

class GetClustersFilter {
  /// Name of the filter field. Valid values can be found in the [RDS DescribeDBClusters API Reference](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBClusters.html).
  final String name;

  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  /// Creates a new [GetClustersFilter].
  /// [name] Name of the filter field. Valid values can be found in the [RDS DescribeDBClusters API Reference](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBClusters.html).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetClustersFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetClustersFilter.fromMap(Map<String, dynamic> map) {
    return GetClustersFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
