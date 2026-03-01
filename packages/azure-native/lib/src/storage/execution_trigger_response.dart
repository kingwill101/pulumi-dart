// ignore_for_file: unused_element, unnecessary_cast

import 'trigger_parameters_response.dart';

/// Execution trigger for storage task assignment
class ExecutionTriggerResponse {
  /// The trigger parameters of the storage task assignment execution
  final TriggerParametersResponse parameters;
  /// The trigger type of the storage task assignment execution
  final String type;

  /// Creates a new [ExecutionTriggerResponse].
  /// [parameters] The trigger parameters of the storage task assignment execution
  /// [type] The trigger type of the storage task assignment execution
  ExecutionTriggerResponse({
    required this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': parameters.toMap(),
      'type': type,
    };
  }

  factory ExecutionTriggerResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionTriggerResponse(
      parameters: TriggerParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

