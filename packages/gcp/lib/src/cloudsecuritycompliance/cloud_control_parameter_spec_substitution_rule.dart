// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_control_parameter_spec_substitution_rule_attribute_substitution_rule.dart';
import 'cloud_control_parameter_spec_substitution_rule_placeholder_substitution_rule.dart';

class CloudControlParameterSpecSubstitutionRule {
  /// Attribute at the given path is substituted entirely.
  /// Structure is documented below.
  final CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRule?
      attributeSubstitutionRule;

  /// Placeholder is substituted in the rendered string.
  /// Structure is documented below.
  final CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule?
      placeholderSubstitutionRule;

  /// Creates a new [CloudControlParameterSpecSubstitutionRule].
  /// [attributeSubstitutionRule] Attribute at the given path is substituted entirely.
  /// [placeholderSubstitutionRule] Placeholder is substituted in the rendered string.
  CloudControlParameterSpecSubstitutionRule({
    this.attributeSubstitutionRule,
    this.placeholderSubstitutionRule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributeSubstitutionRuleValue = attributeSubstitutionRule;
    if (attributeSubstitutionRuleValue != null) {
      map['attributeSubstitutionRule'] = attributeSubstitutionRuleValue.toMap();
    }
    final placeholderSubstitutionRuleValue = placeholderSubstitutionRule;
    if (placeholderSubstitutionRuleValue != null) {
      map['placeholderSubstitutionRule'] =
          placeholderSubstitutionRuleValue.toMap();
    }
    return map;
  }

  factory CloudControlParameterSpecSubstitutionRule.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecSubstitutionRule(
      attributeSubstitutionRule: map['attributeSubstitutionRule'] == null
          ? null
          : CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRule
              .fromMap((map['attributeSubstitutionRule'] as Map)
                  .cast<String, dynamic>()),
      placeholderSubstitutionRule: map['placeholderSubstitutionRule'] == null
          ? null
          : CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule
              .fromMap((map['placeholderSubstitutionRule'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
