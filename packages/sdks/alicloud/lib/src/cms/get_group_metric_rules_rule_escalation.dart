// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_metric_rules_rule_escalation_critical.dart';
import 'get_group_metric_rules_rule_escalation_info.dart';
import 'get_group_metric_rules_rule_escalation_warn.dart';

class GetGroupMetricRulesRuleEscalation {
  /// The critical level.
  final pulumi.Input<List<GetGroupMetricRulesRuleEscalationCritical>> criticals;

  /// The info level.
  final pulumi.Input<List<GetGroupMetricRulesRuleEscalationInfo>> infos;

  /// The warn level.
  final pulumi.Input<List<GetGroupMetricRulesRuleEscalationWarn>> warns;

  /// Creates a new [GetGroupMetricRulesRuleEscalation].
  /// [criticals] The critical level.
  /// [infos] The info level.
  /// [warns] The warn level.
  GetGroupMetricRulesRuleEscalation({
    required this.criticals,
    required this.infos,
    required this.warns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criticals':
          pulumi.Input.mapInputValue<
            List<GetGroupMetricRulesRuleEscalationCritical>,
            List<Map<String, dynamic>>
          >(
            criticals,
            (value) =>
                pulumi.Input.encodeList<
                  GetGroupMetricRulesRuleEscalationCritical,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'infos':
          pulumi.Input.mapInputValue<
            List<GetGroupMetricRulesRuleEscalationInfo>,
            List<Map<String, dynamic>>
          >(
            infos,
            (value) =>
                pulumi.Input.encodeList<
                  GetGroupMetricRulesRuleEscalationInfo,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'warns':
          pulumi.Input.mapInputValue<
            List<GetGroupMetricRulesRuleEscalationWarn>,
            List<Map<String, dynamic>>
          >(
            warns,
            (value) =>
                pulumi.Input.encodeList<
                  GetGroupMetricRulesRuleEscalationWarn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetGroupMetricRulesRuleEscalation.fromMap(Map<String, dynamic> map) {
    return GetGroupMetricRulesRuleEscalation(
      criticals: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetGroupMetricRulesRuleEscalationCritical>(
          map['criticals']!,
          (value) => GetGroupMetricRulesRuleEscalationCritical.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      infos: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetGroupMetricRulesRuleEscalationInfo>(
          map['infos']!,
          (value) => GetGroupMetricRulesRuleEscalationInfo.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      warns: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetGroupMetricRulesRuleEscalationWarn>(
          map['warns']!,
          (value) => GetGroupMetricRulesRuleEscalationWarn.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
