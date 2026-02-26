// ignore_for_file: unused_element, unnecessary_cast

class GetSubnetFilter {
  /// Name of the field to filter by, as defined by [the underlying AWS API](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSubnets.html).
  final String name;

  /// Set of values that are accepted for the given field. A subnet will be selected if any one of the given values matches.
  final List<String> values;

  GetSubnetFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetSubnetFilter.fromMap(Map<String, dynamic> map) {
    return GetSubnetFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
