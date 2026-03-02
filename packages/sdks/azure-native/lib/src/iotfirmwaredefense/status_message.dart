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
  StatusMessage({
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
      errorCode: map['errorCode'] == null ? null : (map['errorCode'] as double).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
    );
  }
}

