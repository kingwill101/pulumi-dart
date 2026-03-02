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
      code: map['code'] == null ? null : (map['code'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
    );
  }
}

