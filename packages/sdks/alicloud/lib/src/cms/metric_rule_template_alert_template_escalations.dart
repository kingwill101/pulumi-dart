// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_rule_template_alert_template_escalations_critical.dart';
import 'metric_rule_template_alert_template_escalations_info.dart';
import 'metric_rule_template_alert_template_escalations_warn.dart';

class MetricRuleTemplateAlertTemplateEscalations {
  /// The condition for triggering critical-level alerts. See `critical` below.
  final pulumi.Input<MetricRuleTemplateAlertTemplateEscalationsCritical>? critical;
  /// The condition for triggering info-level alerts. See `info` below.
  final pulumi.Input<MetricRuleTemplateAlertTemplateEscalationsInfo>? info;
  /// The condition for triggering warn-level alerts. See `warn` below.
  final pulumi.Input<MetricRuleTemplateAlertTemplateEscalationsWarn>? warn;

  /// Creates a new [MetricRuleTemplateAlertTemplateEscalations].
  /// [critical] The condition for triggering critical-level alerts. See `critical` below.
  /// [info] The condition for triggering info-level alerts. See `info` below.
  /// [warn] The condition for triggering warn-level alerts. See `warn` below.
  MetricRuleTemplateAlertTemplateEscalations({
    this.critical,
    this.info,
    this.warn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': ?pulumi.Input.mapOptionalInputValue<MetricRuleTemplateAlertTemplateEscalationsCritical, Map<String, dynamic>>(critical, (value) => value.toMap()),
      'info': ?pulumi.Input.mapOptionalInputValue<MetricRuleTemplateAlertTemplateEscalationsInfo, Map<String, dynamic>>(info, (value) => value.toMap()),
      'warn': ?pulumi.Input.mapOptionalInputValue<MetricRuleTemplateAlertTemplateEscalationsWarn, Map<String, dynamic>>(warn, (value) => value.toMap()),
    };
  }

  factory MetricRuleTemplateAlertTemplateEscalations.fromMap(Map<String, dynamic> map) {
    return MetricRuleTemplateAlertTemplateEscalations(
      critical: map['critical'] == null ? null : (MetricRuleTemplateAlertTemplateEscalationsCritical.fromMap((map['critical'] as Map).cast<String, dynamic>())).input(),
      info: map['info'] == null ? null : (MetricRuleTemplateAlertTemplateEscalationsInfo.fromMap((map['info'] as Map).cast<String, dynamic>())).input(),
      warn: map['warn'] == null ? null : (MetricRuleTemplateAlertTemplateEscalationsWarn.fromMap((map['warn'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

