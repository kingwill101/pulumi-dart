// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Api error base.
class ApiErrorBaseResponse {
  /// The error code.
  final pulumi.Input<String>? code;

  /// The error message.
  final pulumi.Input<String>? message;

  /// The target of the particular error.
  final pulumi.Input<String>? target;

  /// Creates a new [ApiErrorBaseResponse].
  /// [code] The error code.
  /// [message] The error message.
  /// [target] The target of the particular error.
  ApiErrorBaseResponse({this.code, this.message, this.target});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
      'target': ?target,
    };
  }

  factory ApiErrorBaseResponse.fromMap(Map<String, dynamic> map) {
    return ApiErrorBaseResponse(
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
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
