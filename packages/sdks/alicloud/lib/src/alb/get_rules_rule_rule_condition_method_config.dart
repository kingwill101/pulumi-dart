// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleRuleConditionMethodConfig {
  /// Add one or more IP addresses or IP address segments.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetRulesRuleRuleConditionMethodConfig].
  /// [values] Add one or more IP addresses or IP address segments.
  GetRulesRuleRuleConditionMethodConfig({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GetRulesRuleRuleConditionMethodConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleConditionMethodConfig(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

