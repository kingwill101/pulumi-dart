// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alerts_alert_configuration_severity_configuration_eval_condition.dart';

class GetAlertsAlertConfigurationSeverityConfiguration {
  /// Trigger condition.
  final pulumi.Input<
    GetAlertsAlertConfigurationSeverityConfigurationEvalCondition
  >
  evalCondition;

  /// Alarm severity.
  final pulumi.Input<int> severity;

  /// Creates a new [GetAlertsAlertConfigurationSeverityConfiguration].
  /// [evalCondition] Trigger condition.
  /// [severity] Alarm severity.
  GetAlertsAlertConfigurationSeverityConfiguration({
    required this.evalCondition,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evalCondition':
          pulumi.Input.mapInputValue<
            GetAlertsAlertConfigurationSeverityConfigurationEvalCondition,
            Map<String, dynamic>
          >(evalCondition, (value) => value.toMap()),
      'severity': severity,
    };
  }

  factory GetAlertsAlertConfigurationSeverityConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAlertsAlertConfigurationSeverityConfiguration(
      evalCondition: pulumi.Input.fromValue(
        GetAlertsAlertConfigurationSeverityConfigurationEvalCondition.fromMap(
          (map['evalCondition']! as Map).cast<String, dynamic>(),
        ),
      ),
      severity: pulumi.Input.fromValue(map['severity'] as int),
    );
  }
}
