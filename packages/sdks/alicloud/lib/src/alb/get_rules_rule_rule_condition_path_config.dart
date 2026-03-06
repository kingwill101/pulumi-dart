// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleRuleConditionPathConfig {
  /// Add one or more IP addresses or IP address segments.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetRulesRuleRuleConditionPathConfig].
  /// [values] Add one or more IP addresses or IP address segments.
  const GetRulesRuleRuleConditionPathConfig({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GetRulesRuleRuleConditionPathConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleConditionPathConfig(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

