// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityGroupRuleFilter {
  /// Name of the filter field. Valid values can be found in the EC2 [`DescribeSecurityGroupRules`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroupRules.html) API Reference.
  final String name;

  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  /// Creates a new [GetSecurityGroupRuleFilter].
  /// [name] Name of the filter field. Valid values can be found in the EC2 [`DescribeSecurityGroupRules`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroupRules.html) API Reference.
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetSecurityGroupRuleFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetSecurityGroupRuleFilter.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupRuleFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
