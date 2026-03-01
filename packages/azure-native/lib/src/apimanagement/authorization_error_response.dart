// ignore_for_file: unused_element, unnecessary_cast


/// Authorization error details.
class AuthorizationErrorResponse {
  /// Error code
  final String? code;
  /// Error message
  final String? message;

  /// Creates a new [AuthorizationErrorResponse].
  /// [code] Error code
  /// [message] Error message
  AuthorizationErrorResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory AuthorizationErrorResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationErrorResponse(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

