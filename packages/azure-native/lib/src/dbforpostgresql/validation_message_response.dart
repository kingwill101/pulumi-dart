// ignore_for_file: unused_element, unnecessary_cast


/// Validation message object.
class ValidationMessageResponse {
  /// Validation message string.
  final String? message;
  /// Severity of validation message.
  final String? state;

  /// Creates a new [ValidationMessageResponse].
  /// [message] Validation message string.
  /// [state] Severity of validation message.
  ValidationMessageResponse({
    this.message,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'state': ?state,
    };
  }

  factory ValidationMessageResponse.fromMap(Map<String, dynamic> map) {
    return ValidationMessageResponse(
      message: map['message'] == null ? null : map['message'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

