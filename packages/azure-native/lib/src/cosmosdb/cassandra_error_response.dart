// ignore_for_file: unused_element, unnecessary_cast


class CassandraErrorResponse {
  /// Additional information about the error.
  final String? additionalErrorInfo;
  /// The code of error that occurred.
  final String? code;
  /// The message of the error.
  final String? message;
  /// The target resource of the error.
  final String? target;

  /// Creates a new [CassandraErrorResponse].
  /// [additionalErrorInfo] Additional information about the error.
  /// [code] The code of error that occurred.
  /// [message] The message of the error.
  /// [target] The target resource of the error.
  CassandraErrorResponse({
    this.additionalErrorInfo,
    this.code,
    this.message,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalErrorInfo': ?additionalErrorInfo,
      'code': ?code,
      'message': ?message,
      'target': ?target,
    };
  }

  factory CassandraErrorResponse.fromMap(Map<String, dynamic> map) {
    return CassandraErrorResponse(
      additionalErrorInfo: map['additionalErrorInfo'] == null ? null : map['additionalErrorInfo'] as String,
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

