// ignore_for_file: unused_element, unnecessary_cast

class GetVpcsFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpcs.html).
  final String name;

  /// Set of values that are accepted for the given field.
  /// A VPC will be selected if any one of the given values matches.
  final List<String> values;

  /// Creates a new [GetVpcsFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  GetVpcsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetVpcsFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
