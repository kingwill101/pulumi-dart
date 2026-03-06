// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetForwardingRulesForwardingRuleRuleConditionHostConfig {
  /// The domain name is 3-128 characters long.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetForwardingRulesForwardingRuleRuleConditionHostConfig].
  /// [values] The domain name is 3-128 characters long.
  const GetForwardingRulesForwardingRuleRuleConditionHostConfig({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GetForwardingRulesForwardingRuleRuleConditionHostConfig.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesForwardingRuleRuleConditionHostConfig(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

