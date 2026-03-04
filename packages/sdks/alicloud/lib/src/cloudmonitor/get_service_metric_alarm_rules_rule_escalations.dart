// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_metric_alarm_rules_rule_escalations_critical.dart';
import 'get_service_metric_alarm_rules_rule_escalations_info.dart';
import 'get_service_metric_alarm_rules_rule_escalations_warn.dart';

class GetServiceMetricAlarmRulesRuleEscalations {
  /// The conditions for triggering Critical-level alerts.
  final pulumi.Input<GetServiceMetricAlarmRulesRuleEscalationsCritical>
  critical;

  /// The conditions for triggering Info-level alerts.
  final pulumi.Input<GetServiceMetricAlarmRulesRuleEscalationsInfo> info;

  /// The conditions for triggering Warn-level alerts.
  final pulumi.Input<GetServiceMetricAlarmRulesRuleEscalationsWarn> warn;

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
      'critical':
          pulumi.Input.mapInputValue<
            GetServiceMetricAlarmRulesRuleEscalationsCritical,
            Map<String, dynamic>
          >(critical, (value) => value.toMap()),
      'info':
          pulumi.Input.mapInputValue<
            GetServiceMetricAlarmRulesRuleEscalationsInfo,
            Map<String, dynamic>
          >(info, (value) => value.toMap()),
      'warn':
          pulumi.Input.mapInputValue<
            GetServiceMetricAlarmRulesRuleEscalationsWarn,
            Map<String, dynamic>
          >(warn, (value) => value.toMap()),
    };
  }

  factory GetServiceMetricAlarmRulesRuleEscalations.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceMetricAlarmRulesRuleEscalations(
      critical: pulumi.Input.fromValue(
        GetServiceMetricAlarmRulesRuleEscalationsCritical.fromMap(
          (map['critical']! as Map).cast<String, dynamic>(),
        ),
      ),
      info: pulumi.Input.fromValue(
        GetServiceMetricAlarmRulesRuleEscalationsInfo.fromMap(
          (map['info']! as Map).cast<String, dynamic>(),
        ),
      ),
      warn: pulumi.Input.fromValue(
        GetServiceMetricAlarmRulesRuleEscalationsWarn.fromMap(
          (map['warn']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
