// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyRuleTagFilter {
  /// The tag key.
  final pulumi.Input<String>? key;
  /// Tag matching rules, support EQUAL: Match tag key and tag value. NOT: matches the tag key, but does NOT match the tag value.
  final pulumi.Input<String>? operator;
  /// The label value, which is empty and represents any value.
  final pulumi.Input<String>? value;

  /// Creates a new [PolicyRuleTagFilter].
  /// [key] The tag key.
  /// [operator] Tag matching rules, support EQUAL: Match tag key and tag value. NOT: matches the tag key, but does NOT match the tag value.
  /// [value] The label value, which is empty and represents any value.
  PolicyRuleTagFilter({
    this.key,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?operator,
      'value': ?value,
    };
  }

  factory PolicyRuleTagFilter.fromMap(Map<String, dynamic> map) {
    return PolicyRuleTagFilter(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      operator: map['operator'] == null ? null : (map['operator']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

