// ignore_for_file: unused_element, unnecessary_cast


/// Error definition for managed integration runtime.
class ManagedIntegrationRuntimeErrorResponse {
  /// Error code.
  final String code;
  /// Error message.
  final String message;
  /// Managed integration runtime error parameters.
  final List<String> parameters;
  /// The time when the error occurred.
  final String time;

  /// Creates a new [ManagedIntegrationRuntimeErrorResponse].
  /// [code] Error code.
  /// [message] Error message.
  /// [parameters] Managed integration runtime error parameters.
  /// [time] The time when the error occurred.
  ManagedIntegrationRuntimeErrorResponse({
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
      code: map['code'] as String,
      message: map['message'] as String,
      parameters: (map['parameters'] as List).cast<String>(),
      time: map['time'] as String,
    );
  }
}

