// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule_rule_condition_cookie_config_value.dart';

class GetRulesRuleRuleConditionCookieConfig {
  /// Add one or more IP addresses or IP address segments.
  final pulumi.Input<List<GetRulesRuleRuleConditionCookieConfigValue>> values;

  /// Creates a new [GetRulesRuleRuleConditionCookieConfig].
  /// [values] Add one or more IP addresses or IP address segments.
  GetRulesRuleRuleConditionCookieConfig({required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values':
          pulumi.Input.mapInputValue<
            List<GetRulesRuleRuleConditionCookieConfigValue>,
            List<Map<String, dynamic>>
          >(
            values,
            (value) =>
                pulumi.Input.encodeList<
                  GetRulesRuleRuleConditionCookieConfigValue,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetRulesRuleRuleConditionCookieConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRulesRuleRuleConditionCookieConfig(
      values: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetRulesRuleRuleConditionCookieConfigValue>(
          map['values']!,
          (value) => GetRulesRuleRuleConditionCookieConfigValue.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
