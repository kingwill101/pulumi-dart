// ignore_for_file: unused_element, unnecessary_cast


/// Api error base.
class ApiErrorBaseResponse {
  /// The error code.
  final String? code;
  /// The error message.
  final String? message;
  /// The target of the particular error.
  final String? target;

  /// Creates a new [ApiErrorBaseResponse].
  /// [code] The error code.
  /// [message] The error message.
  /// [target] The target of the particular error.
  ApiErrorBaseResponse({
    this.code,
    this.message,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
      'target': ?target,
    };
  }

  factory ApiErrorBaseResponse.fromMap(Map<String, dynamic> map) {
    return ApiErrorBaseResponse(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

