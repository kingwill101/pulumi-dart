// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule_rule_condition_query_string_config_value.dart';

class GetRulesRuleRuleConditionQueryStringConfig {
  /// Add one or more IP addresses or IP address segments.
  final pulumi.Input<List<GetRulesRuleRuleConditionQueryStringConfigValue>> values;

  /// Creates a new [GetRulesRuleRuleConditionQueryStringConfig].
  /// [values] Add one or more IP addresses or IP address segments.
  const GetRulesRuleRuleConditionQueryStringConfig({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': pulumi.Input.mapInputValue<List<GetRulesRuleRuleConditionQueryStringConfigValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<GetRulesRuleRuleConditionQueryStringConfigValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRulesRuleRuleConditionQueryStringConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleConditionQueryStringConfig(
      values: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesRuleRuleConditionQueryStringConfigValue>(map['values']!, (value) => GetRulesRuleRuleConditionQueryStringConfigValue.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

