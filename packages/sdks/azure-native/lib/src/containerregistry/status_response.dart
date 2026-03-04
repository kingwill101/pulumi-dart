// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of an Azure resource at the time the operation was called.
class StatusResponse {
  /// The short label for the status.
  final pulumi.Input<String> displayStatus;

  /// The detailed message for the status, including alerts and error messages.
  final pulumi.Input<String> message;

  /// The timestamp when the status was changed to the current value.
  final pulumi.Input<String> timestamp;

  /// Creates a new [StatusResponse].
  /// [displayStatus] The short label for the status.
  /// [message] The detailed message for the status, including alerts and error messages.
  /// [timestamp] The timestamp when the status was changed to the current value.
  StatusResponse({
    required this.displayStatus,
    required this.message,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayStatus': displayStatus,
      'message': message,
      'timestamp': timestamp,
    };
  }

  factory StatusResponse.fromMap(Map<String, dynamic> map) {
    return StatusResponse(
      displayStatus: pulumi.Input.fromValue(map['displayStatus'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      timestamp: pulumi.Input.fromValue(map['timestamp'] as String),
    );
  }
}
