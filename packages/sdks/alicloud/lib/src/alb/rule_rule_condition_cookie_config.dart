// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_rule_condition_cookie_config_value.dart';

class RuleRuleConditionCookieConfig {
  /// Add one or more IP addresses or IP address segments. You can add up to 5 forwarding rules in a SourceIp.
  final pulumi.Input<List<RuleRuleConditionCookieConfigValue>>? values;

  /// Creates a new [RuleRuleConditionCookieConfig].
  /// [values] Add one or more IP addresses or IP address segments. You can add up to 5 forwarding rules in a SourceIp.
  RuleRuleConditionCookieConfig({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?pulumi.Input.mapOptionalInputValue<List<RuleRuleConditionCookieConfigValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<RuleRuleConditionCookieConfigValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleRuleConditionCookieConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleConditionCookieConfig(
      values: map['values'] == null ? null : (pulumi.Input.decodeList<RuleRuleConditionCookieConfigValue>(map['values']!, (value) => RuleRuleConditionCookieConfigValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

