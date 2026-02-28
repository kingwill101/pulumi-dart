// ignore_for_file: unused_element, unnecessary_cast


class GetAvailabilityZoneFilter {
  /// Name of the filter field. Valid values can be found in the [EC2 DescribeAvailabilityZones API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html).
  final String name;
  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  /// Creates a new [GetAvailabilityZoneFilter].
  /// [name] Name of the filter field. Valid values can be found in the [EC2 DescribeAvailabilityZones API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetAvailabilityZoneFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetAvailabilityZoneFilter.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityZoneFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

