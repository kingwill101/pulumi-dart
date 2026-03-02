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
  GetRulesRuleRuleConditionQueryStringConfigValue({
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
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

