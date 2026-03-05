// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleRuleConditionSourceIpConfig {
  /// Add one or more IP addresses or IP address segments.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetRulesRuleRuleConditionSourceIpConfig].
  /// [values] Add one or more IP addresses or IP address segments.
  GetRulesRuleRuleConditionSourceIpConfig({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GetRulesRuleRuleConditionSourceIpConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleConditionSourceIpConfig(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

