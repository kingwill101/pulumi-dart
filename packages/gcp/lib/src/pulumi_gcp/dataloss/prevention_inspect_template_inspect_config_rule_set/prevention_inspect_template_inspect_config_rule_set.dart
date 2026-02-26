// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../prevention_inspect_template_inspect_config_rule_set_info_type/prevention_inspect_template_inspect_config_rule_set_info_type.dart';
import '../prevention_inspect_template_inspect_config_rule_set_rule/prevention_inspect_template_inspect_config_rule_set_rule.dart';

class PreventionInspectTemplateInspectConfigRuleSet {
  /// List of infoTypes this rule set is applied to.
  /// Structure is documented below.
  final List<PreventionInspectTemplateInspectConfigRuleSetInfoType> infoTypes;

  /// Set of rules to be applied to infoTypes. The rules are applied in order.
  /// Structure is documented below.
  final List<PreventionInspectTemplateInspectConfigRuleSetRule> rules;

  PreventionInspectTemplateInspectConfigRuleSet({
    required this.infoTypes,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['infoTypes'] = Input.encodeList<
        PreventionInspectTemplateInspectConfigRuleSetInfoType,
        Map<String, dynamic>>(infoTypes, (value) => value.toMap());
    map['rules'] = Input.encodeList<
        PreventionInspectTemplateInspectConfigRuleSetRule,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    return map;
  }

  factory PreventionInspectTemplateInspectConfigRuleSet.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSet(
      infoTypes: Input.decodeList<
              PreventionInspectTemplateInspectConfigRuleSetInfoType>(
          map['infoTypes'],
          (value) =>
              PreventionInspectTemplateInspectConfigRuleSetInfoType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rules:
          Input.decodeList<PreventionInspectTemplateInspectConfigRuleSetRule>(
              map['rules'],
              (value) =>
                  PreventionInspectTemplateInspectConfigRuleSetRule.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
