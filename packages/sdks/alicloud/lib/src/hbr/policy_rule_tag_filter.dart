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
  const PolicyRuleTagFilter({
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
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

