// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metric_rule_templates_template_alert_template_escalation_critical.dart';
import 'get_metric_rule_templates_template_alert_template_escalation_info.dart';
import 'get_metric_rule_templates_template_alert_template_escalation_warn.dart';

class GetMetricRuleTemplatesTemplateAlertTemplateEscalation {
  /// The condition for triggering critical-level alerts.
  final List<GetMetricRuleTemplatesTemplateAlertTemplateEscalationCritical> criticals;
  /// The condition for triggering info-level alerts.
  final List<GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo> infos;
  /// The condition for triggering warn-level alerts.
  final List<GetMetricRuleTemplatesTemplateAlertTemplateEscalationWarn> warns;

  /// Creates a new [GetMetricRuleTemplatesTemplateAlertTemplateEscalation].
  /// [criticals] The condition for triggering critical-level alerts.
  /// [infos] The condition for triggering info-level alerts.
  /// [warns] The condition for triggering warn-level alerts.
  GetMetricRuleTemplatesTemplateAlertTemplateEscalation({
    required this.criticals,
    required this.infos,
    required this.warns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criticals': pulumi.Input.encodeList<GetMetricRuleTemplatesTemplateAlertTemplateEscalationCritical, Map<String, dynamic>>(criticals, (value) => value.toMap()),
      'infos': pulumi.Input.encodeList<GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo, Map<String, dynamic>>(infos, (value) => value.toMap()),
      'warns': pulumi.Input.encodeList<GetMetricRuleTemplatesTemplateAlertTemplateEscalationWarn, Map<String, dynamic>>(warns, (value) => value.toMap()),
    };
  }

  factory GetMetricRuleTemplatesTemplateAlertTemplateEscalation.fromMap(Map<String, dynamic> map) {
    return GetMetricRuleTemplatesTemplateAlertTemplateEscalation(
      criticals: pulumi.Input.decodeList<GetMetricRuleTemplatesTemplateAlertTemplateEscalationCritical>(map['criticals'], (value) => GetMetricRuleTemplatesTemplateAlertTemplateEscalationCritical.fromMap((value as Map).cast<String, dynamic>())),
      infos: pulumi.Input.decodeList<GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo>(map['infos'], (value) => GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo.fromMap((value as Map).cast<String, dynamic>())),
      warns: pulumi.Input.decodeList<GetMetricRuleTemplatesTemplateAlertTemplateEscalationWarn>(map['warns'], (value) => GetMetricRuleTemplatesTemplateAlertTemplateEscalationWarn.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

