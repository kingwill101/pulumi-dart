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
  Error({this.code, this.message});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': ?code, 'message': ?message};
  }

  factory Error.fromMap(Map<String, dynamic> map) {
    return Error(
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
