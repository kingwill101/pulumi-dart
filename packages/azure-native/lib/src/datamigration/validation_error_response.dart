// ignore_for_file: unused_element, unnecessary_cast


/// Description about the errors happen while performing migration validation
class ValidationErrorResponse {
  /// Severity of the error
  final String? severity;
  /// Error Text
  final String? text;

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
      severity: map['severity'] == null ? null : map['severity'] as String,
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}

