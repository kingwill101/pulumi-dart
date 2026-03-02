// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The error code compose of code and message.
class Error {
  /// The code of error.
  final pulumi.Input<String>? code;
  /// The message of error.
  final pulumi.Input<String>? message;

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
      code: map['code'] == null ? null : (map['code'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
    );
  }
}

