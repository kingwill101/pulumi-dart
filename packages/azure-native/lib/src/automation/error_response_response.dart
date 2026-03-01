// ignore_for_file: unused_element, unnecessary_cast


/// Error response of an operation failure
class ErrorResponseResponse {
  /// Error code
  final String? code;
  /// Error message indicating why the operation failed.
  final String? message;

  /// Creates a new [ErrorResponseResponse].
  /// [code] Error code
  /// [message] Error message indicating why the operation failed.
  ErrorResponseResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory ErrorResponseResponse.fromMap(Map<String, dynamic> map) {
    return ErrorResponseResponse(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

