// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyTemplateOrRule {
  /// ARN of the rule.
  final pulumi.Input<String?>? ruleIdentifier;
  /// ARN of the template.
  final pulumi.Input<String?>? templateIdentifier;

  /// Creates a new [PolicyTemplateOrRule].
  /// [ruleIdentifier] ARN of the rule.
  /// [templateIdentifier] ARN of the template.
  const PolicyTemplateOrRule({
    this.ruleIdentifier,
    this.templateIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleIdentifier': ?ruleIdentifier,
      'templateIdentifier': ?templateIdentifier,
    };
  }

  factory PolicyTemplateOrRule.fromMap(Map<String, dynamic> map) {
    return PolicyTemplateOrRule(
      ruleIdentifier: (() { final guardedValue = map['ruleIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateIdentifier: (() { final guardedValue = map['templateIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
