// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The error code compose of code and message.
class ErrorResponse {
  /// The code of error.
  final pulumi.Input<String>? code;
  /// The message of error.
  final pulumi.Input<String>? message;

  /// Creates a new [ErrorResponse].
  /// [code] The code of error.
  /// [message] The message of error.
  ErrorResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory ErrorResponse.fromMap(Map<String, dynamic> map) {
    return ErrorResponse(
      code: map['code'] == null ? null : (map['code']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

