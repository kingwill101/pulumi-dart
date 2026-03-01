// ignore_for_file: unused_element, unnecessary_cast


/// Agent Errors if any during agent or system component upgrade.
class AgentErrorResponse {
  /// Agent component where error message occured.
  final String component;
  /// Agent error message.
  final String message;
  /// Severity of the error message.
  final String severity;
  /// The timestamp of error occured (UTC).
  final String time;

  /// Creates a new [AgentErrorResponse].
  /// [component] Agent component where error message occured.
  /// [message] Agent error message.
  /// [severity] Severity of the error message.
  /// [time] The timestamp of error occured (UTC).
  AgentErrorResponse({
    required this.component,
    required this.message,
    required this.severity,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'component': component,
      'message': message,
      'severity': severity,
      'time': time,
    };
  }

  factory AgentErrorResponse.fromMap(Map<String, dynamic> map) {
    return AgentErrorResponse(
      component: map['component'] as String,
      message: map['message'] as String,
      severity: map['severity'] as String,
      time: map['time'] as String,
    );
  }
}

