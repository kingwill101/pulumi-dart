// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description about the errors happen while performing migration validation
class ValidationErrorResponse {
  /// Severity of the error
  final pulumi.Input<String>? severity;
  /// Error Text
  final pulumi.Input<String>? text;

  /// Creates a new [ValidationErrorResponse].
  /// [severity] Severity of the error
  /// [text] Error Text
  ValidationErrorResponse({
    this.severity,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'severity': ?severity,
      'text': ?text,
    };
  }

  factory ValidationErrorResponse.fromMap(Map<String, dynamic> map) {
    return ValidationErrorResponse(
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

