// ignore_for_file: unused_element, unnecessary_cast


/// The details of the error.
class ErrorDetailsResponse {
  /// Error code.
  final String code;
  /// Error message indicating why the operation failed.
  final String message;

  /// Creates a new [ErrorDetailsResponse].
  /// [code] Error code.
  /// [message] Error message indicating why the operation failed.
  ErrorDetailsResponse({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory ErrorDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ErrorDetailsResponse(
      code: map['code'] as String,
      message: map['message'] as String,
    );
  }
}

