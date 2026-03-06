// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleRuleConditionQueryStringConfigValue {
  /// The key of the query string.
  final pulumi.Input<String> key;
  /// The value of the query string.
  final pulumi.Input<String> value;

  /// Creates a new [GetRulesRuleRuleConditionQueryStringConfigValue].
  /// [key] The key of the query string.
  /// [value] The value of the query string.
  const GetRulesRuleRuleConditionQueryStringConfigValue({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetRulesRuleRuleConditionQueryStringConfigValue.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleConditionQueryStringConfigValue(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

