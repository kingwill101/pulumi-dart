// ignore_for_file: unused_element, unnecessary_cast

import 'get_alerts_alert_configuration_severity_configuration_eval_condition.dart';

class GetAlertsAlertConfigurationSeverityConfiguration {
  /// Trigger condition.
  final GetAlertsAlertConfigurationSeverityConfigurationEvalCondition evalCondition;
  /// Alarm severity.
  final int severity;

  /// Creates a new [GetAlertsAlertConfigurationSeverityConfiguration].
  /// [evalCondition] Trigger condition.
  /// [severity] Alarm severity.
  GetAlertsAlertConfigurationSeverityConfiguration({
    required this.evalCondition,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evalCondition': evalCondition.toMap(),
      'severity': severity,
    };
  }

  factory GetAlertsAlertConfigurationSeverityConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAlertsAlertConfigurationSeverityConfiguration(
      evalCondition: GetAlertsAlertConfigurationSeverityConfigurationEvalCondition.fromMap((map['evalCondition'] as Map).cast<String, dynamic>()),
      severity: map['severity'] as int,
    );
  }
}

