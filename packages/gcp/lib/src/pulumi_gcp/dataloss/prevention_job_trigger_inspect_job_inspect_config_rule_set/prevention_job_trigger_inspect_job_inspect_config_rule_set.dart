// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../prevention_job_trigger_inspect_job_inspect_config_rule_set_info_type/prevention_job_trigger_inspect_job_inspect_config_rule_set_info_type.dart';
import '../prevention_job_trigger_inspect_job_inspect_config_rule_set_rule/prevention_job_trigger_inspect_job_inspect_config_rule_set_rule.dart';

class PreventionJobTriggerInspectJobInspectConfigRuleSet {
  /// List of infoTypes this rule set is applied to.
  /// Structure is documented below.
  final List<PreventionJobTriggerInspectJobInspectConfigRuleSetInfoType>?
      infoTypes;

  /// Set of rules to be applied to infoTypes. The rules are applied in order.
  /// Structure is documented below.
  final List<PreventionJobTriggerInspectJobInspectConfigRuleSetRule> rules;

  PreventionJobTriggerInspectJobInspectConfigRuleSet({
    this.infoTypes,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final infoTypesValue = infoTypes;
    if (infoTypesValue != null) {
      map['infoTypes'] = Input.encodeList<
          PreventionJobTriggerInspectJobInspectConfigRuleSetInfoType,
          Map<String, dynamic>>(infoTypesValue, (value) => value.toMap());
    }
    map['rules'] = Input.encodeList<
        PreventionJobTriggerInspectJobInspectConfigRuleSetRule,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    return map;
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSet.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSet(
      infoTypes: map['infoTypes'] == null
          ? null
          : Input.decodeList<
                  PreventionJobTriggerInspectJobInspectConfigRuleSetInfoType>(
              map['infoTypes'],
              (value) =>
                  PreventionJobTriggerInspectJobInspectConfigRuleSetInfoType
                      .fromMap((value as Map).cast<String, dynamic>())),
      rules: Input.decodeList<
              PreventionJobTriggerInspectJobInspectConfigRuleSetRule>(
          map['rules'],
          (value) =>
              PreventionJobTriggerInspectJobInspectConfigRuleSetRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
