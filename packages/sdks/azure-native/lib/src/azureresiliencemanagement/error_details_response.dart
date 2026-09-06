// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Errors in T&C / RBAC assignment.
class ErrorDetailsResponse {
  /// Error code.
  final pulumi.Input<String> code;
  /// Error message.
  final pulumi.Input<String> message;
  /// A list of recommendations to resolve the error.
  final pulumi.Input<List<String>?>? recommendations;

  /// Creates a new [ErrorDetailsResponse].
  /// [code] Error code.
  /// [message] Error message.
  /// [recommendations] A list of recommendations to resolve the error.
  const ErrorDetailsResponse({
    required this.code,
    required this.message,
    this.recommendations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
      'recommendations': ?recommendations,
    };
  }

  factory ErrorDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ErrorDetailsResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      recommendations: (() { final guardedValue = map['recommendations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
