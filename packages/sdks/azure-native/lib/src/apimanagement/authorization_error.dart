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
  AuthorizationError({this.code, this.message});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': ?code, 'message': ?message};
  }

  factory AuthorizationError.fromMap(Map<String, dynamic> map) {
    return AuthorizationError(
      code: (() {
        final guardedValue = map['code'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
