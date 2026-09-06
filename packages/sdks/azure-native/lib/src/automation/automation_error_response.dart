// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error response of an operation failure
class AutomationErrorResponse {
  /// Error code
  final pulumi.Input<String?>? code;
  /// Error message indicating why the operation failed.
  final pulumi.Input<String?>? message;

  /// Creates a new [AutomationErrorResponse].
  /// [code] Error code
  /// [message] Error message indicating why the operation failed.
  const AutomationErrorResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory AutomationErrorResponse.fromMap(Map<String, dynamic> map) {
    return AutomationErrorResponse(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
