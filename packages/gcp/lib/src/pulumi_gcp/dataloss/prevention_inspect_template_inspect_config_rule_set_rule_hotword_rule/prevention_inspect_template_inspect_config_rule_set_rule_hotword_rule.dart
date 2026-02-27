// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_inspect_template_inspect_config_rule_set_rule_hotword_rule_hotword_regex/prevention_inspect_template_inspect_config_rule_set_rule_hotword_rule_hotword_regex.dart';
import '../prevention_inspect_template_inspect_config_rule_set_rule_hotword_rule_likelihood_adjustment/prevention_inspect_template_inspect_config_rule_set_rule_hotword_rule_likelihood_adjustment.dart';
import '../prevention_inspect_template_inspect_config_rule_set_rule_hotword_rule_proximity/prevention_inspect_template_inspect_config_rule_set_rule_hotword_rule_proximity.dart';

class PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRule {
  /// Regular expression pattern defining what qualifies as a hotword.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleHotwordRegex
      hotwordRegex;

  /// Likelihood adjustment to apply to all matching findings.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment
      likelihoodAdjustment;

  /// Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  /// exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be
  /// used to match substrings of the finding itself. For example, the certainty of a phone number regex
  /// `(\d{3}) \d{3}-\d{4}` could be adjusted upwards if the area code is known to be the local area code of a company
  /// office using the hotword regex `(xxx)`, where `xxx` is the area code in question.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximity
      proximity;

  PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRule({
    required this.hotwordRegex,
    required this.likelihoodAdjustment,
    required this.proximity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hotwordRegex'] = hotwordRegex.toMap();
    map['likelihoodAdjustment'] = likelihoodAdjustment.toMap();
    map['proximity'] = proximity.toMap();
    return map;
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRule.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRule(
      hotwordRegex:
          PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleHotwordRegex
              .fromMap((map['hotwordRegex'] as Map).cast<String, dynamic>()),
      likelihoodAdjustment:
          PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment
              .fromMap(
                  (map['likelihoodAdjustment'] as Map).cast<String, dynamic>()),
      proximity:
          PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximity
              .fromMap((map['proximity'] as Map).cast<String, dynamic>()),
    );
  }
}
