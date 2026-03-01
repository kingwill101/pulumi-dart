// ignore_for_file: unused_element, unnecessary_cast


class GetAvailabilityZonesFilter {
  /// Name of the filter field. Valid values can be found in the [EC2 DescribeAvailabilityZones API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html).
  final String name;
  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  /// Creates a new [GetAvailabilityZonesFilter].
  /// [name] Name of the filter field. Valid values can be found in the [EC2 DescribeAvailabilityZones API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetAvailabilityZonesFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetAvailabilityZonesFilter.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityZonesFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

