// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_configuration_severity_configuration_eval_condition.dart';

class AlertConfigurationSeverityConfiguration {
  /// Trigger condition. See `eval_condition` below.
  final pulumi.Input<AlertConfigurationSeverityConfigurationEvalCondition>? evalCondition;
  /// Alarm severity.
  final pulumi.Input<int>? severity;

  /// Creates a new [AlertConfigurationSeverityConfiguration].
  /// [evalCondition] Trigger condition. See `eval_condition` below.
  /// [severity] Alarm severity.
  AlertConfigurationSeverityConfiguration({
    this.evalCondition,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evalCondition': ?pulumi.Input.mapOptionalInputValue<AlertConfigurationSeverityConfigurationEvalCondition, Map<String, dynamic>>(evalCondition, (value) => value.toMap()),
      'severity': ?severity,
    };
  }

  factory AlertConfigurationSeverityConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationSeverityConfiguration(
      evalCondition: (() { final guardedValue = map['evalCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertConfigurationSeverityConfigurationEvalCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

