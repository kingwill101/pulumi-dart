// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_dictionary/prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_dictionary.dart';
import '../prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_exclude_by_hotword/prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_exclude_by_hotword.dart';
import '../prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_exclude_info_types/prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_exclude_info_types.dart';
import '../prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_regex/prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_regex.dart';

class PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRule {
  /// Dictionary which defines the rule.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionary?
      dictionary;

  /// Drop if the hotword rule is contained in the proximate context.
  /// For tabular data, the context includes the column name.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotword?
      excludeByHotword;

  /// Set of infoTypes for which findings would affect this rule.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes?
      excludeInfoTypes;

  /// How the rule is applied. See the documentation for more information: https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#MatchingType
  /// Possible values are: `MATCHING_TYPE_FULL_MATCH`, `MATCHING_TYPE_PARTIAL_MATCH`, `MATCHING_TYPE_INVERSE_MATCH`.
  final String matchingType;

  /// Regular expression which defines the rule.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleRegex?
      regex;

  PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRule({
    this.dictionary,
    this.excludeByHotword,
    this.excludeInfoTypes,
    required this.matchingType,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dictionaryValue = dictionary;
    if (dictionaryValue != null) {
      map['dictionary'] = dictionaryValue.toMap();
    }
    final excludeByHotwordValue = excludeByHotword;
    if (excludeByHotwordValue != null) {
      map['excludeByHotword'] = excludeByHotwordValue.toMap();
    }
    final excludeInfoTypesValue = excludeInfoTypes;
    if (excludeInfoTypesValue != null) {
      map['excludeInfoTypes'] = excludeInfoTypesValue.toMap();
    }
    map['matchingType'] = matchingType;
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = regexValue.toMap();
    }
    return map;
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRule.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRule(
      dictionary: map['dictionary'] == null
          ? null
          : PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionary
              .fromMap((map['dictionary'] as Map).cast<String, dynamic>()),
      excludeByHotword: map['excludeByHotword'] == null
          ? null
          : PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotword
              .fromMap(
                  (map['excludeByHotword'] as Map).cast<String, dynamic>()),
      excludeInfoTypes: map['excludeInfoTypes'] == null
          ? null
          : PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes
              .fromMap(
                  (map['excludeInfoTypes'] as Map).cast<String, dynamic>()),
      matchingType: map['matchingType'] as String,
      regex: map['regex'] == null
          ? null
          : PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleRegex
              .fromMap((map['regex'] as Map).cast<String, dynamic>()),
    );
  }
}
