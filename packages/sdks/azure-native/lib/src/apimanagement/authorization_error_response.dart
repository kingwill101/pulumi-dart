// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authorization error details.
class AuthorizationErrorResponse {
  /// Error code
  final pulumi.Input<String>? code;
  /// Error message
  final pulumi.Input<String>? message;

  /// Creates a new [AuthorizationErrorResponse].
  /// [code] Error code
  /// [message] Error message
  const AuthorizationErrorResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory AuthorizationErrorResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationErrorResponse(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
