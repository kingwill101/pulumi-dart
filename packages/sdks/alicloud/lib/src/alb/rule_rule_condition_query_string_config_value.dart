// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleRuleConditionQueryStringConfigValue {
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? value;

  /// Creates a new [RuleRuleConditionQueryStringConfigValue].
  /// [key] Optional.
  /// [value] Optional.
  RuleRuleConditionQueryStringConfigValue({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory RuleRuleConditionQueryStringConfigValue.fromMap(Map<String, dynamic> map) {
    return RuleRuleConditionQueryStringConfigValue(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

