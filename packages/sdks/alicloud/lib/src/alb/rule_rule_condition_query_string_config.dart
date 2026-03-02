// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_rule_condition_query_string_config_value.dart';

class RuleRuleConditionQueryStringConfig {
  /// Add one or more IP addresses or IP address segments. You can add up to 5 forwarding rules in a SourceIp.
  final pulumi.Input<List<RuleRuleConditionQueryStringConfigValue>>? values;

  /// Creates a new [RuleRuleConditionQueryStringConfig].
  /// [values] Add one or more IP addresses or IP address segments. You can add up to 5 forwarding rules in a SourceIp.
  RuleRuleConditionQueryStringConfig({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?pulumi.Input.mapOptionalInputValue<List<RuleRuleConditionQueryStringConfigValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<RuleRuleConditionQueryStringConfigValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleRuleConditionQueryStringConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleConditionQueryStringConfig(
      values: map['values'] == null ? null : (pulumi.Input.decodeList<RuleRuleConditionQueryStringConfigValue>(map['values'], (value) => RuleRuleConditionQueryStringConfigValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

