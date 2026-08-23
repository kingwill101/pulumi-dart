// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The error message associated with the cluster creation.
class Errors {
  /// The error code.
  final pulumi.Input<String>? code;
  /// The error message.
  final pulumi.Input<String>? message;

  /// Creates a new [Errors].
  /// [code] The error code.
  /// [message] The error message.
  const Errors({
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
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
