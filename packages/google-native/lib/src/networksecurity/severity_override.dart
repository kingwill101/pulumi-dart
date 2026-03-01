// ignore_for_file: unused_element, unnecessary_cast

import 'severity_override_action.dart';
import 'severity_override_severity.dart';

/// Defines what action to take for a specific severity match.
class SeverityOverride {
  /// Threat action override.
  final SeverityOverrideAction action;

  /// Severity level to match.
  final SeverityOverrideSeverity severity;

  /// Creates a new [SeverityOverride].
  /// [action] Threat action override.
  /// [severity] Severity level to match.
  SeverityOverride({required this.action, required this.severity});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.value,
      'severity': severity.value,
    };
  }

  factory SeverityOverride.fromMap(Map<String, dynamic> map) {
    return SeverityOverride(
      action: SeverityOverrideAction.fromValue(map['action'] as String),
      severity: SeverityOverrideSeverity.fromValue(map['severity'] as String),
    );
  }
}
