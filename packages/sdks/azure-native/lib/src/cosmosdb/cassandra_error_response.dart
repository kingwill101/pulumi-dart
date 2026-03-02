// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CassandraErrorResponse {
  /// Additional information about the error.
  final pulumi.Input<String>? additionalErrorInfo;
  /// The code of error that occurred.
  final pulumi.Input<String>? code;
  /// The message of the error.
  final pulumi.Input<String>? message;
  /// The target resource of the error.
  final pulumi.Input<String>? target;

  /// Creates a new [CassandraErrorResponse].
  /// [additionalErrorInfo] Additional information about the error.
  /// [code] The code of error that occurred.
  /// [message] The message of the error.
  /// [target] The target resource of the error.
  CassandraErrorResponse({
    this.additionalErrorInfo,
    this.code,
    this.message,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalErrorInfo': ?additionalErrorInfo,
      'code': ?code,
      'message': ?message,
      'target': ?target,
    };
  }

  factory CassandraErrorResponse.fromMap(Map<String, dynamic> map) {
    return CassandraErrorResponse(
      additionalErrorInfo: map['additionalErrorInfo'] == null ? null : (map['additionalErrorInfo']! as String).input(),
      code: map['code'] == null ? null : (map['code']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
    );
  }
}

