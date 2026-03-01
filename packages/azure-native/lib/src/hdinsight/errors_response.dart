// ignore_for_file: unused_element, unnecessary_cast


/// The error message associated with the cluster creation.
class ErrorsResponse {
  /// The error code.
  final String? code;
  /// The error message.
  final String? message;

  /// Creates a new [ErrorsResponse].
  /// [code] The error code.
  /// [message] The error message.
  ErrorsResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory ErrorsResponse.fromMap(Map<String, dynamic> map) {
    return ErrorsResponse(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

