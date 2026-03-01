// ignore_for_file: unused_element, unnecessary_cast


/// The status of an Azure resource at the time the operation was called.
class StatusResponse {
  /// The short label for the status.
  final String displayStatus;
  /// The detailed message for the status, including alerts and error messages.
  final String message;
  /// The timestamp when the status was changed to the current value.
  final String timestamp;

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
      displayStatus: map['displayStatus'] as String,
      message: map['message'] as String,
      timestamp: map['timestamp'] as String,
    );
  }
}

