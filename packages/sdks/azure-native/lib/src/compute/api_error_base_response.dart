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
  ApiErrorBaseResponse({
    this.code,
    this.message,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
      'target': ?target,
    };
  }

  factory ApiErrorBaseResponse.fromMap(Map<String, dynamic> map) {
    return ApiErrorBaseResponse(
      code: map['code'] == null ? null : (map['code']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
    );
  }
}

