// ignore_for_file: unused_element, unnecessary_cast


class SecurityProfileThreatPreventionProfileSeverityOverride {
  /// Threat action override.
  /// Possible values are: `ALERT`, `ALLOW`, `DEFAULT_ACTION`, `DENY`.
  final String action;
  /// Severity level to match.
  /// Possible values are: `CRITICAL`, `HIGH`, `INFORMATIONAL`, `LOW`, `MEDIUM`.
  final String severity;

  /// Creates a new [SecurityProfileThreatPreventionProfileSeverityOverride].
  /// [action] Threat action override.
  /// [severity] Severity level to match.
  SecurityProfileThreatPreventionProfileSeverityOverride({
    required this.action,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'severity': severity,
    };
  }

  factory SecurityProfileThreatPreventionProfileSeverityOverride.fromMap(Map<String, dynamic> map) {
    return SecurityProfileThreatPreventionProfileSeverityOverride(
      action: map['action'] as String,
      severity: map['severity'] as String,
    );
  }
}

