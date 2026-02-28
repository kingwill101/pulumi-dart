// ignore_for_file: unused_element, unnecessary_cast


class GetSecurityGroupFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroups.html).
  final String name;
  /// Set of values that are accepted for the given field.
  /// A Security Group will be selected if any one of the given values matches.
  final List<String> values;

  /// Creates a new [GetSecurityGroupFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  GetSecurityGroupFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetSecurityGroupFilter.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

