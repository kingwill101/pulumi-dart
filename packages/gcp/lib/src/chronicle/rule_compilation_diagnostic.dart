// ignore_for_file: unused_element, unnecessary_cast

import 'rule_compilation_diagnostic_position.dart';

class RuleCompilationDiagnostic {
  /// (Output)
  /// Output only. The diagnostic message.
  final String? message;

  /// CompilationPosition represents the location of a compilation diagnostic in
  /// rule text.
  /// Structure is documented below.
  final RuleCompilationDiagnosticPosition? position;

  /// (Output)
  /// Output only. The severity of a rule's compilation diagnostic.
  /// Possible values:
  /// SEVERITY_UNSPECIFIED
  /// WARNING
  /// ERROR
  final String? severity;

  /// (Output)
  /// Output only. Link to documentation that describes a diagnostic in more detail.
  final String? uri;

  /// Creates a new [RuleCompilationDiagnostic].
  /// [message] (Output)
  /// [position] CompilationPosition represents the location of a compilation diagnostic in
  /// [severity] (Output)
  /// [uri] (Output)
  RuleCompilationDiagnostic({
    this.message,
    this.position,
    this.severity,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'position': ?position == null ? null : position!.toMap(),
      'severity': ?severity,
      'uri': ?uri,
    };
  }

  factory RuleCompilationDiagnostic.fromMap(Map<String, dynamic> map) {
    return RuleCompilationDiagnostic(
      message: map['message'] == null ? null : map['message'] as String,
      position: map['position'] == null
          ? null
          : RuleCompilationDiagnosticPosition.fromMap(
              (map['position'] as Map).cast<String, dynamic>(),
            ),
      severity: map['severity'] == null ? null : map['severity'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
