// ignore_for_file: unused_element, unnecessary_cast

/// Defines what action to take for a specific severity match.
class SeverityOverrideResponse {
  /// Threat action override.
  final String action;

  /// Severity level to match.
  final String severity;

  /// Creates a new [SeverityOverrideResponse].
  /// [action] Threat action override.
  /// [severity] Severity level to match.
  SeverityOverrideResponse({
    required this.action,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['severity'] = severity;
    return map;
  }

  factory SeverityOverrideResponse.fromMap(Map<String, dynamic> map) {
    return SeverityOverrideResponse(
      action: map['action'] as String,
      severity: map['severity'] as String,
    );
  }
}
