// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule/prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule.dart';
import '../prevention_inspect_template_inspect_config_rule_set_rule_hotword_rule/prevention_inspect_template_inspect_config_rule_set_rule_hotword_rule.dart';

class PreventionInspectTemplateInspectConfigRuleSetRule {
  /// The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRule?
      exclusionRule;

  /// Hotword-based detection rule.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRule?
      hotwordRule;

  PreventionInspectTemplateInspectConfigRuleSetRule({
    this.exclusionRule,
    this.hotwordRule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exclusionRuleValue = exclusionRule;
    if (exclusionRuleValue != null) {
      map['exclusionRule'] = exclusionRuleValue.toMap();
    }
    final hotwordRuleValue = hotwordRule;
    if (hotwordRuleValue != null) {
      map['hotwordRule'] = hotwordRuleValue.toMap();
    }
    return map;
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRule.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRule(
      exclusionRule: map['exclusionRule'] == null
          ? null
          : PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRule
              .fromMap((map['exclusionRule'] as Map).cast<String, dynamic>()),
      hotwordRule: map['hotwordRule'] == null
          ? null
          : PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRule
              .fromMap((map['hotwordRule'] as Map).cast<String, dynamic>()),
    );
  }
}
