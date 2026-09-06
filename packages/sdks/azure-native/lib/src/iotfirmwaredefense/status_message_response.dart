// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error and status message
class StatusMessageResponse {
  /// The error code
  final pulumi.Input<double?>? errorCode;
  /// The error or status message
  final pulumi.Input<String?>? message;

  /// Creates a new [StatusMessageResponse].
  /// [errorCode] The error code
  /// [message] The error or status message
  const StatusMessageResponse({
    this.errorCode,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'message': ?message,
    };
  }

  factory StatusMessageResponse.fromMap(Map<String, dynamic> map) {
    return StatusMessageResponse(
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
