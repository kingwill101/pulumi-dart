// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleRuleConditionHostConfig {
  /// Add one or more IP addresses or IP address segments.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetRulesRuleRuleConditionHostConfig].
  /// [values] Add one or more IP addresses or IP address segments.
  GetRulesRuleRuleConditionHostConfig({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GetRulesRuleRuleConditionHostConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleConditionHostConfig(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

