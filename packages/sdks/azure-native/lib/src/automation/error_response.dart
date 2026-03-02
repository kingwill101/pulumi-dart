// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error response of an operation failure
class ErrorResponse {
  /// Error code
  final pulumi.Input<String>? code;
  /// Error message indicating why the operation failed.
  final pulumi.Input<String>? message;

  /// Creates a new [ErrorResponse].
  /// [code] Error code
  /// [message] Error message indicating why the operation failed.
  ErrorResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory ErrorResponse.fromMap(Map<String, dynamic> map) {
    return ErrorResponse(
      code: map['code'] == null ? null : (map['code']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

