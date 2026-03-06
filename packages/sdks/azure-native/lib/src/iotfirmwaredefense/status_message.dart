// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error and status message
class StatusMessage {
  /// The error code
  final pulumi.Input<double>? errorCode;
  /// The error or status message
  final pulumi.Input<String>? message;

  /// Creates a new [StatusMessage].
  /// [errorCode] The error code
  /// [message] The error or status message
  const StatusMessage({
    this.errorCode,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'message': ?message,
    };
  }

  factory StatusMessage.fromMap(Map<String, dynamic> map) {
    return StatusMessage(
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

