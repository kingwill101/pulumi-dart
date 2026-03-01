// ignore_for_file: unused_element, unnecessary_cast


class GetCoipPoolFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeCoipPools.html).
  final String name;
  /// Set of values that are accepted for the given field.
  /// A COIP Pool will be selected if any one of the given values matches.
  final List<String> values;

  /// Creates a new [GetCoipPoolFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  GetCoipPoolFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetCoipPoolFilter.fromMap(Map<String, dynamic> map) {
    return GetCoipPoolFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

