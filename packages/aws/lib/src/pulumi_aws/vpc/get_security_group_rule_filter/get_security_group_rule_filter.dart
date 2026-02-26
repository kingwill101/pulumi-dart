// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityGroupRuleFilter {
  /// Name of the filter field. Valid values can be found in the EC2 [`DescribeSecurityGroupRules`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroupRules.html) API Reference.
  final String name;

  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  GetSecurityGroupRuleFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetSecurityGroupRuleFilter.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupRuleFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
