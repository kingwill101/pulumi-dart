// ignore_for_file: unused_element, unnecessary_cast

class GetVpcIpamsFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeIpams.html).
  final String name;

  /// Set of values that are accepted for the given field.
  /// An IPAM resource will be selected if any one of the given values matches.
  final List<String> values;

  /// Creates a new [GetVpcIpamsFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  GetVpcIpamsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetVpcIpamsFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
