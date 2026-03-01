// ignore_for_file: unused_element, unnecessary_cast


/// Describes the status of a trigger
class TriggerStatusResponse {
  /// The status code.
  final String code;
  /// The detailed status message, including for alerts and error messages.
  final String message;
  /// The time of the status.
  final String time;

  /// Creates a new [TriggerStatusResponse].
  /// [code] The status code.
  /// [message] The detailed status message, including for alerts and error messages.
  /// [time] The time of the status.
  TriggerStatusResponse({
    required this.code,
    required this.message,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
      'time': time,
    };
  }

  factory TriggerStatusResponse.fromMap(Map<String, dynamic> map) {
    return TriggerStatusResponse(
      code: map['code'] as String,
      message: map['message'] as String,
      time: map['time'] as String,
    );
  }
}

