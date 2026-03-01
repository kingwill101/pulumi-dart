// ignore_for_file: unused_element, unnecessary_cast

import 'get_service_metric_alarm_rules_rule_escalations_critical.dart';
import 'get_service_metric_alarm_rules_rule_escalations_info.dart';
import 'get_service_metric_alarm_rules_rule_escalations_warn.dart';

class GetServiceMetricAlarmRulesRuleEscalations {
  /// The conditions for triggering Critical-level alerts.
  final GetServiceMetricAlarmRulesRuleEscalationsCritical critical;
  /// The conditions for triggering Info-level alerts.
  final GetServiceMetricAlarmRulesRuleEscalationsInfo info;
  /// The conditions for triggering Warn-level alerts.
  final GetServiceMetricAlarmRulesRuleEscalationsWarn warn;

  /// Creates a new [GetServiceMetricAlarmRulesRuleEscalations].
  /// [critical] The conditions for triggering Critical-level alerts.
  /// [info] The conditions for triggering Info-level alerts.
  /// [warn] The conditions for triggering Warn-level alerts.
  GetServiceMetricAlarmRulesRuleEscalations({
    required this.critical,
    required this.info,
    required this.warn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': critical.toMap(),
      'info': info.toMap(),
      'warn': warn.toMap(),
    };
  }

  factory GetServiceMetricAlarmRulesRuleEscalations.fromMap(Map<String, dynamic> map) {
    return GetServiceMetricAlarmRulesRuleEscalations(
      critical: GetServiceMetricAlarmRulesRuleEscalationsCritical.fromMap((map['critical'] as Map).cast<String, dynamic>()),
      info: GetServiceMetricAlarmRulesRuleEscalationsInfo.fromMap((map['info'] as Map).cast<String, dynamic>()),
      warn: GetServiceMetricAlarmRulesRuleEscalationsWarn.fromMap((map['warn'] as Map).cast<String, dynamic>()),
    );
  }
}

