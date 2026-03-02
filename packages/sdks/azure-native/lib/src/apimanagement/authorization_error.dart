// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authorization error details.
class AuthorizationError {
  /// Error code
  final pulumi.Input<String>? code;
  /// Error message
  final pulumi.Input<String>? message;

  /// Creates a new [AuthorizationError].
  /// [code] Error code
  /// [message] Error message
  AuthorizationError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory AuthorizationError.fromMap(Map<String, dynamic> map) {
    return AuthorizationError(
      code: map['code'] == null ? null : (map['code']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

