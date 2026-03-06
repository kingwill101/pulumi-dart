// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error definition for managed integration runtime.
class ManagedIntegrationRuntimeErrorResponse {
  /// Error code.
  final pulumi.Input<String> code;
  /// Error message.
  final pulumi.Input<String> message;
  /// Managed integration runtime error parameters.
  final pulumi.Input<List<String>> parameters;
  /// The time when the error occurred.
  final pulumi.Input<String> time;

  /// Creates a new [ManagedIntegrationRuntimeErrorResponse].
  /// [code] Error code.
  /// [message] Error message.
  /// [parameters] Managed integration runtime error parameters.
  /// [time] The time when the error occurred.
  const ManagedIntegrationRuntimeErrorResponse({
    required this.code,
    required this.message,
    required this.parameters,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
      'parameters': parameters,
      'time': time,
    };
  }

  factory ManagedIntegrationRuntimeErrorResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIntegrationRuntimeErrorResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      parameters: pulumi.Input.fromValue((map['parameters'] as List).cast<String>()),
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}

