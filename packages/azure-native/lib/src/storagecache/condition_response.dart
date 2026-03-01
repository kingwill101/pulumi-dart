// ignore_for_file: unused_element, unnecessary_cast


/// Outstanding conditions that will need to be resolved.
class ConditionResponse {
  /// The issue requiring attention.
  final String message;
  /// The time when the condition was raised.
  final String timestamp;

  /// Creates a new [ConditionResponse].
  /// [message] The issue requiring attention.
  /// [timestamp] The time when the condition was raised.
  ConditionResponse({
    required this.message,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'timestamp': timestamp,
    };
  }

  factory ConditionResponse.fromMap(Map<String, dynamic> map) {
    return ConditionResponse(
      message: map['message'] as String,
      timestamp: map['timestamp'] as String,
    );
  }
}

