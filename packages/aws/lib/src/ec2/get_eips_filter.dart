// ignore_for_file: unused_element, unnecessary_cast


class GetEipsFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAddresses.html).
  final String name;
  /// Set of values that are accepted for the given field. An Elastic IP will be selected if any one of the given values matches.
  final List<String> values;

  /// Creates a new [GetEipsFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field. An Elastic IP will be selected if any one of the given values matches.
  GetEipsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetEipsFilter.fromMap(Map<String, dynamic> map) {
    return GetEipsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

