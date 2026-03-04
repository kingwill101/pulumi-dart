// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Agent Errors if any during agent or system component upgrade.
class AgentErrorResponse {
  /// Agent component where error message occured.
  final pulumi.Input<String> component;

  /// Agent error message.
  final pulumi.Input<String> message;

  /// Severity of the error message.
  final pulumi.Input<String> severity;

  /// The timestamp of error occured (UTC).
  final pulumi.Input<String> time;

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
      component: pulumi.Input.fromValue(map['component'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}
