// ignore_for_file: unused_element, unnecessary_cast


class GetSubnetFilter {
  /// Name of the field to filter by, as defined by [the underlying AWS API](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSubnets.html).
  final String name;
  /// Set of values that are accepted for the given field. A subnet will be selected if any one of the given values matches.
  final List<String> values;

  /// Creates a new [GetSubnetFilter].
  /// [name] Name of the field to filter by, as defined by [the underlying AWS API](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSubnets.html).
  /// [values] Set of values that are accepted for the given field. A subnet will be selected if any one of the given values matches.
  GetSubnetFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetSubnetFilter.fromMap(Map<String, dynamic> map) {
    return GetSubnetFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

