// ignore_for_file: unused_element, unnecessary_cast


/// Error details
class ErrorInfoResponse {
  /// Error code.
  final String code;
  /// Error message.
  final String message;

  /// Creates a new [ErrorInfoResponse].
  /// [code] Error code.
  /// [message] Error message.
  ErrorInfoResponse({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory ErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return ErrorInfoResponse(
      code: map['code'] as String,
      message: map['message'] as String,
    );
  }
}

