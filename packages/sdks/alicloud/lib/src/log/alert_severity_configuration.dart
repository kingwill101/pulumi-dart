// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertSeverityConfiguration {
  /// Severity when this condition is met.
  final pulumi.Input<Map<String, String>> evalCondition;
  /// Severity for new alert, including 2,4,6,8,10 for Report,Low,Medium,High,Critical.
  final pulumi.Input<int> severity;

  /// Creates a new [AlertSeverityConfiguration].
  /// [evalCondition] Severity when this condition is met.
  /// [severity] Severity for new alert, including 2,4,6,8,10 for Report,Low,Medium,High,Critical.
  const AlertSeverityConfiguration({
    required this.evalCondition,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evalCondition': evalCondition,
      'severity': severity,
    };
  }

  factory AlertSeverityConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertSeverityConfiguration(
      evalCondition: pulumi.Input.fromValue((map['evalCondition'] as Map).cast<String, String>()),
      severity: pulumi.Input.fromValue(map['severity'] as int),
    );
  }
}

