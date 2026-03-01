// ignore_for_file: unused_element, unnecessary_cast


/// The error message associated with the cluster creation.
class Errors {
  /// The error code.
  final String? code;
  /// The error message.
  final String? message;

  /// Creates a new [Errors].
  /// [code] The error code.
  /// [message] The error message.
  Errors({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory Errors.fromMap(Map<String, dynamic> map) {
    return Errors(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

