// ignore_for_file: unused_element, unnecessary_cast

class GetInstancesFilterRds {
  /// Name of the filter field. Valid values can be found in the [RDS DescribeDBClusters API Reference](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBClusters.html) or [RDS DescribeDBInstances API Reference](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBInstances.html).
  final String name;

  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  GetInstancesFilterRds({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetInstancesFilterRds.fromMap(Map<String, dynamic> map) {
    return GetInstancesFilterRds(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
