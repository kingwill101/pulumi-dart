// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Validation message object.
class ValidationMessageResponse {
  /// Validation message string.
  final pulumi.Input<String>? message;
  /// Severity of validation message.
  final pulumi.Input<String>? state;

  /// Creates a new [ValidationMessageResponse].
  /// [message] Validation message string.
  /// [state] Severity of validation message.
  const ValidationMessageResponse({
    this.message,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'state': ?state,
    };
  }

  factory ValidationMessageResponse.fromMap(Map<String, dynamic> map) {
    return ValidationMessageResponse(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

