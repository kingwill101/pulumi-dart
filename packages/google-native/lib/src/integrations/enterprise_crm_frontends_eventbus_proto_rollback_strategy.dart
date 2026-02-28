// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_frontends_eventbus_proto_event_parameters.dart';

/// Next available id: 4
class EnterpriseCrmFrontendsEventbusProtoRollbackStrategy {
  /// Optional. The customized parameters the user can pass to this task.
  final EnterpriseCrmFrontendsEventbusProtoEventParameters? parameters;
  /// This is the name of the task that needs to be executed upon rollback of this task.
  final String rollbackTaskImplementationClassName;
  /// These are the tasks numbers of the tasks whose `rollback_strategy.rollback_task_implementation_class_name` needs to be executed upon failure of this task.
  final List<String> taskNumbersToRollback;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoRollbackStrategy].
  /// [parameters] Optional. The customized parameters the user can pass to this task.
  /// [rollbackTaskImplementationClassName] This is the name of the task that needs to be executed upon rollback of this task.
  /// [taskNumbersToRollback] These are the tasks numbers of the tasks whose `rollback_strategy.rollback_task_implementation_class_name` needs to be executed upon failure of this task.
  EnterpriseCrmFrontendsEventbusProtoRollbackStrategy({
    this.parameters,
    required this.rollbackTaskImplementationClassName,
    required this.taskNumbersToRollback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters == null ? null : parameters!.toMap(),
      'rollbackTaskImplementationClassName': rollbackTaskImplementationClassName,
      'taskNumbersToRollback': taskNumbersToRollback,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoRollbackStrategy.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoRollbackStrategy(
      parameters: map['parameters'] == null ? null : EnterpriseCrmFrontendsEventbusProtoEventParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
      rollbackTaskImplementationClassName: map['rollbackTaskImplementationClassName'] as String,
      taskNumbersToRollback: (map['taskNumbersToRollback'] as List).cast<String>(),
    );
  }
}

