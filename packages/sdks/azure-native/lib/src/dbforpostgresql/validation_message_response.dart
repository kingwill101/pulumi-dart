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
  ValidationMessageResponse({
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
      message: map['message'] == null ? null : (map['message']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

