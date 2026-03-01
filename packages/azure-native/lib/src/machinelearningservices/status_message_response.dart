// ignore_for_file: unused_element, unnecessary_cast


/// Active message associated with project
class StatusMessageResponse {
  /// Service-defined message code.
  final String code;
  /// Time in UTC at which the message was created.
  final String createdDateTime;
  /// Severity level of message.
  final String level;
  /// A human-readable representation of the message code.
  final String message;

  /// Creates a new [StatusMessageResponse].
  /// [code] Service-defined message code.
  /// [createdDateTime] Time in UTC at which the message was created.
  /// [level] Severity level of message.
  /// [message] A human-readable representation of the message code.
  StatusMessageResponse({
    required this.code,
    required this.createdDateTime,
    required this.level,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'createdDateTime': createdDateTime,
      'level': level,
      'message': message,
    };
  }

  factory StatusMessageResponse.fromMap(Map<String, dynamic> map) {
    return StatusMessageResponse(
      code: map['code'] as String,
      createdDateTime: map['createdDateTime'] as String,
      level: map['level'] as String,
      message: map['message'] as String,
    );
  }
}

