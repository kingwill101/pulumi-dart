// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_hotword_rule_hotword_regex/prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_hotword_rule_hotword_regex.dart';
import '../prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_hotword_rule_likelihood_adjustment/prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_hotword_rule_likelihood_adjustment.dart';
import '../prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_hotword_rule_proximity/prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_hotword_rule_proximity.dart';

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule {
  /// Regular expression pattern defining what qualifies as a hotword.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleHotwordRegex?
      hotwordRegex;

  /// Likelihood adjustment to apply to all matching findings.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment?
      likelihoodAdjustment;

  /// Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  /// exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be
  /// used to match substrings of the finding itself. For example, the certainty of a phone number regex
  /// `(\d{3}) \d{3}-\d{4}` could be adjusted upwards if the area code is known to be the local area code of a company
  /// office using the hotword regex `(xxx)`, where `xxx` is the area code in question.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity?
      proximity;

  PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule({
    this.hotwordRegex,
    this.likelihoodAdjustment,
    this.proximity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hotwordRegexValue = hotwordRegex;
    if (hotwordRegexValue != null) {
      map['hotwordRegex'] = hotwordRegexValue.toMap();
    }
    final likelihoodAdjustmentValue = likelihoodAdjustment;
    if (likelihoodAdjustmentValue != null) {
      map['likelihoodAdjustment'] = likelihoodAdjustmentValue.toMap();
    }
    final proximityValue = proximity;
    if (proximityValue != null) {
      map['proximity'] = proximityValue.toMap();
    }
    return map;
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule(
      hotwordRegex: map['hotwordRegex'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleHotwordRegex
              .fromMap((map['hotwordRegex'] as Map).cast<String, dynamic>()),
      likelihoodAdjustment: map['likelihoodAdjustment'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment
              .fromMap(
                  (map['likelihoodAdjustment'] as Map).cast<String, dynamic>()),
      proximity: map['proximity'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity
              .fromMap((map['proximity'] as Map).cast<String, dynamic>()),
    );
  }
}
