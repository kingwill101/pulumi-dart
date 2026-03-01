// ignore_for_file: unused_element, unnecessary_cast

class GetKeyPairFilter {
  /// Name of the filter field. Valid values can be found in the [EC2 DescribeKeyPairs API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeKeyPairs.html).
  final String name;

  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  /// Creates a new [GetKeyPairFilter].
  /// [name] Name of the filter field. Valid values can be found in the [EC2 DescribeKeyPairs API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeKeyPairs.html).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetKeyPairFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetKeyPairFilter.fromMap(Map<String, dynamic> map) {
    return GetKeyPairFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
