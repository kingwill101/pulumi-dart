// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleRuleConditionResponseStatusCodeConfig {
  /// Add one or more IP addresses or IP address segments. You can add up to 5 forwarding rules in a SourceIp.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [RuleRuleConditionResponseStatusCodeConfig].
  /// [values] Add one or more IP addresses or IP address segments. You can add up to 5 forwarding rules in a SourceIp.
  RuleRuleConditionResponseStatusCodeConfig({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory RuleRuleConditionResponseStatusCodeConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleConditionResponseStatusCodeConfig(
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

