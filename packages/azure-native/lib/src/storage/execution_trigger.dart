// ignore_for_file: unused_element, unnecessary_cast

import 'trigger_parameters.dart';
import 'trigger_type.dart';

/// Execution trigger for storage task assignment
class ExecutionTrigger {
  /// The trigger parameters of the storage task assignment execution
  final TriggerParameters parameters;
  /// The trigger type of the storage task assignment execution
  final TriggerType type;

  /// Creates a new [ExecutionTrigger].
  /// [parameters] The trigger parameters of the storage task assignment execution
  /// [type] The trigger type of the storage task assignment execution
  ExecutionTrigger({
    required this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': parameters.toMap(),
      'type': type.value,
    };
  }

  factory ExecutionTrigger.fromMap(Map<String, dynamic> map) {
    return ExecutionTrigger(
      parameters: TriggerParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
      type: TriggerType.fromValue(map['type'] as String),
    );
  }
}

