// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config_rule_set_info_type.dart';
import 'prevention_inspect_template_inspect_config_rule_set_rule.dart';

class PreventionInspectTemplateInspectConfigRuleSet {
  /// List of infoTypes this rule set is applied to.
  /// Structure is documented below.
  final List<PreventionInspectTemplateInspectConfigRuleSetInfoType> infoTypes;

  /// Set of rules to be applied to infoTypes. The rules are applied in order.
  /// Structure is documented below.
  final List<PreventionInspectTemplateInspectConfigRuleSetRule> rules;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSet].
  /// [infoTypes] List of infoTypes this rule set is applied to.
  /// [rules] Set of rules to be applied to infoTypes. The rules are applied in order.
  PreventionInspectTemplateInspectConfigRuleSet({
    required this.infoTypes,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes':
          pulumi.Input.encodeList<
            PreventionInspectTemplateInspectConfigRuleSetInfoType,
            Map<String, dynamic>
          >(infoTypes, (value) => value.toMap()),
      'rules':
          pulumi.Input.encodeList<
            PreventionInspectTemplateInspectConfigRuleSetRule,
            Map<String, dynamic>
          >(rules, (value) => value.toMap()),
    };
  }

  factory PreventionInspectTemplateInspectConfigRuleSet.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionInspectTemplateInspectConfigRuleSet(
      infoTypes:
          pulumi.Input.decodeList<
            PreventionInspectTemplateInspectConfigRuleSetInfoType
          >(
            map['infoTypes'],
            (value) =>
                PreventionInspectTemplateInspectConfigRuleSetInfoType.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      rules:
          pulumi.Input.decodeList<
            PreventionInspectTemplateInspectConfigRuleSetRule
          >(
            map['rules'],
            (value) =>
                PreventionInspectTemplateInspectConfigRuleSetRule.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
