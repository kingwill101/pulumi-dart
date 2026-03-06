// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metric_rule_templates_template_alert_template_escalation_critical.dart';
import 'get_metric_rule_templates_template_alert_template_escalation_info.dart';
import 'get_metric_rule_templates_template_alert_template_escalation_warn.dart';

class GetMetricRuleTemplatesTemplateAlertTemplateEscalation {
  /// The condition for triggering critical-level alerts.
  final pulumi.Input<List<GetMetricRuleTemplatesTemplateAlertTemplateEscalationCritical>> criticals;
  /// The condition for triggering info-level alerts.
  final pulumi.Input<List<GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo>> infos;
  /// The condition for triggering warn-level alerts.
  final pulumi.Input<List<GetMetricRuleTemplatesTemplateAlertTemplateEscalationWarn>> warns;

  /// Creates a new [GetMetricRuleTemplatesTemplateAlertTemplateEscalation].
  /// [criticals] The condition for triggering critical-level alerts.
  /// [infos] The condition for triggering info-level alerts.
  /// [warns] The condition for triggering warn-level alerts.
  const GetMetricRuleTemplatesTemplateAlertTemplateEscalation({
    required this.criticals,
    required this.infos,
    required this.warns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criticals': pulumi.Input.mapInputValue<List<GetMetricRuleTemplatesTemplateAlertTemplateEscalationCritical>, List<Map<String, dynamic>>>(criticals, (value) => pulumi.Input.encodeList<GetMetricRuleTemplatesTemplateAlertTemplateEscalationCritical, Map<String, dynamic>>(value, (value) => value.toMap())),
      'infos': pulumi.Input.mapInputValue<List<GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo>, List<Map<String, dynamic>>>(infos, (value) => pulumi.Input.encodeList<GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'warns': pulumi.Input.mapInputValue<List<GetMetricRuleTemplatesTemplateAlertTemplateEscalationWarn>, List<Map<String, dynamic>>>(warns, (value) => pulumi.Input.encodeList<GetMetricRuleTemplatesTemplateAlertTemplateEscalationWarn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetMetricRuleTemplatesTemplateAlertTemplateEscalation.fromMap(Map<String, dynamic> map) {
    return GetMetricRuleTemplatesTemplateAlertTemplateEscalation(
      criticals: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMetricRuleTemplatesTemplateAlertTemplateEscalationCritical>(map['criticals']!, (value) => GetMetricRuleTemplatesTemplateAlertTemplateEscalationCritical.fromMap((value as Map).cast<String, dynamic>()))),
      infos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo>(map['infos']!, (value) => GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo.fromMap((value as Map).cast<String, dynamic>()))),
      warns: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMetricRuleTemplatesTemplateAlertTemplateEscalationWarn>(map['warns']!, (value) => GetMetricRuleTemplatesTemplateAlertTemplateEscalationWarn.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

