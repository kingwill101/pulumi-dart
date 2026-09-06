// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains details on the failure.
class SessionHostHealthCheckFailureDetailsResponse {
  /// Error code corresponding for the failure.
  final pulumi.Input<int> errorCode;
  /// The timestamp of the last update.
  final pulumi.Input<String> lastHealthCheckDateTime;
  /// Failure message: hints on what is wrong and how to recover.
  final pulumi.Input<String> message;

  /// Creates a new [SessionHostHealthCheckFailureDetailsResponse].
  /// [errorCode] Error code corresponding for the failure.
  /// [lastHealthCheckDateTime] The timestamp of the last update.
  /// [message] Failure message: hints on what is wrong and how to recover.
  const SessionHostHealthCheckFailureDetailsResponse({
    required this.errorCode,
    required this.lastHealthCheckDateTime,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'lastHealthCheckDateTime': lastHealthCheckDateTime,
      'message': message,
    };
  }

  factory SessionHostHealthCheckFailureDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SessionHostHealthCheckFailureDetailsResponse(
      errorCode: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['errorCode'])),
      lastHealthCheckDateTime: pulumi.Input.fromValue(map['lastHealthCheckDateTime'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
