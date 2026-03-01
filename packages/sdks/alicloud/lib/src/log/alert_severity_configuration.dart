// ignore_for_file: unused_element, unnecessary_cast


class AlertSeverityConfiguration {
  /// Severity when this condition is met.
  final Map<String, String> evalCondition;
  /// Severity for new alert, including 2,4,6,8,10 for Report,Low,Medium,High,Critical.
  final int severity;

  /// Creates a new [AlertSeverityConfiguration].
  /// [evalCondition] Severity when this condition is met.
  /// [severity] Severity for new alert, including 2,4,6,8,10 for Report,Low,Medium,High,Critical.
  AlertSeverityConfiguration({
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
      evalCondition: (map['evalCondition'] as Map).cast<String, String>(),
      severity: map['severity'] as int,
    );
  }
}

