// ignore_for_file: unused_element, unnecessary_cast


/// The error code compose of code and message.
class Error {
  /// The code of error.
  final String? code;
  /// The message of error.
  final String? message;

  /// Creates a new [Error].
  /// [code] The code of error.
  /// [message] The message of error.
  Error({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory Error.fromMap(Map<String, dynamic> map) {
    return Error(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

