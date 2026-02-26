// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityGroupRulesFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroupRules.html).
  final String name;

  /// Set of values that are accepted for the given field.
  ///
  /// Security group rule IDs will be selected if any one of the given values match.
  final List<String> values;

  GetSecurityGroupRulesFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetSecurityGroupRulesFilter.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupRulesFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
