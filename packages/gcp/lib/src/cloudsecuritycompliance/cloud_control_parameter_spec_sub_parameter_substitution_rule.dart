// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_control_parameter_spec_sub_parameter_substitution_rule_attribute_substitution_rule.dart';
import 'cloud_control_parameter_spec_sub_parameter_substitution_rule_placeholder_substitution_rule.dart';

class CloudControlParameterSpecSubParameterSubstitutionRule {
  /// Attribute at the given path is substituted entirely.
  /// Structure is documented below.
  final CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule?
  attributeSubstitutionRule;

  /// Placeholder is substituted in the rendered string.
  /// Structure is documented below.
  final CloudControlParameterSpecSubParameterSubstitutionRulePlaceholderSubstitutionRule?
  placeholderSubstitutionRule;

  /// Creates a new [CloudControlParameterSpecSubParameterSubstitutionRule].
  /// [attributeSubstitutionRule] Attribute at the given path is substituted entirely.
  /// [placeholderSubstitutionRule] Placeholder is substituted in the rendered string.
  CloudControlParameterSpecSubParameterSubstitutionRule({
    this.attributeSubstitutionRule,
    this.placeholderSubstitutionRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeSubstitutionRule': ?attributeSubstitutionRule == null
          ? null
          : attributeSubstitutionRule!.toMap(),
      'placeholderSubstitutionRule': ?placeholderSubstitutionRule == null
          ? null
          : placeholderSubstitutionRule!.toMap(),
    };
  }

  factory CloudControlParameterSpecSubParameterSubstitutionRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlParameterSpecSubParameterSubstitutionRule(
      attributeSubstitutionRule: map['attributeSubstitutionRule'] == null
          ? null
          : CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule.fromMap(
              (map['attributeSubstitutionRule'] as Map).cast<String, dynamic>(),
            ),
      placeholderSubstitutionRule: map['placeholderSubstitutionRule'] == null
          ? null
          : CloudControlParameterSpecSubParameterSubstitutionRulePlaceholderSubstitutionRule.fromMap(
              (map['placeholderSubstitutionRule'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
