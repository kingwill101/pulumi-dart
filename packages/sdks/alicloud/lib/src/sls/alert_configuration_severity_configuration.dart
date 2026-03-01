// ignore_for_file: unused_element, unnecessary_cast

import 'alert_configuration_severity_configuration_eval_condition.dart';

class AlertConfigurationSeverityConfiguration {
  /// Trigger condition. See `eval_condition` below.
  final AlertConfigurationSeverityConfigurationEvalCondition? evalCondition;
  /// Alarm severity.
  final int? severity;

  /// Creates a new [AlertConfigurationSeverityConfiguration].
  /// [evalCondition] Trigger condition. See `eval_condition` below.
  /// [severity] Alarm severity.
  AlertConfigurationSeverityConfiguration({
    this.evalCondition,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evalCondition': ?evalCondition == null ? null : evalCondition!.toMap(),
      'severity': ?severity,
    };
  }

  factory AlertConfigurationSeverityConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationSeverityConfiguration(
      evalCondition: map['evalCondition'] == null ? null : AlertConfigurationSeverityConfigurationEvalCondition.fromMap((map['evalCondition'] as Map).cast<String, dynamic>()),
      severity: map['severity'] == null ? null : map['severity'] as int,
    );
  }
}

