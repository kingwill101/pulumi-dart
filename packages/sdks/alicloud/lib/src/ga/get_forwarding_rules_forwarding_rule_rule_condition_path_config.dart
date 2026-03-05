// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetForwardingRulesForwardingRuleRuleConditionPathConfig {
  /// The domain name is 3-128 characters long.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetForwardingRulesForwardingRuleRuleConditionPathConfig].
  /// [values] The domain name is 3-128 characters long.
  GetForwardingRulesForwardingRuleRuleConditionPathConfig({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GetForwardingRulesForwardingRuleRuleConditionPathConfig.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesForwardingRuleRuleConditionPathConfig(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

