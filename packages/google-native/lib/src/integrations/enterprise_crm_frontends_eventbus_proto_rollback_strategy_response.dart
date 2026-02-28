// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_frontends_eventbus_proto_event_parameters_response.dart';

/// Next available id: 4
class EnterpriseCrmFrontendsEventbusProtoRollbackStrategyResponse {
  /// Optional. The customized parameters the user can pass to this task.
  final EnterpriseCrmFrontendsEventbusProtoEventParametersResponse parameters;

  /// This is the name of the task that needs to be executed upon rollback of this task.
  final String rollbackTaskImplementationClassName;

  /// These are the tasks numbers of the tasks whose `rollback_strategy.rollback_task_implementation_class_name` needs to be executed upon failure of this task.
  final List<String> taskNumbersToRollback;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoRollbackStrategyResponse].
  /// [parameters] Optional. The customized parameters the user can pass to this task.
  /// [rollbackTaskImplementationClassName] This is the name of the task that needs to be executed upon rollback of this task.
  /// [taskNumbersToRollback] These are the tasks numbers of the tasks whose `rollback_strategy.rollback_task_implementation_class_name` needs to be executed upon failure of this task.
  EnterpriseCrmFrontendsEventbusProtoRollbackStrategyResponse({
    required this.parameters,
    required this.rollbackTaskImplementationClassName,
    required this.taskNumbersToRollback,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parameters'] = parameters.toMap();
    map['rollbackTaskImplementationClassName'] =
        rollbackTaskImplementationClassName;
    map['taskNumbersToRollback'] = taskNumbersToRollback;
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoRollbackStrategyResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoRollbackStrategyResponse(
      parameters:
          EnterpriseCrmFrontendsEventbusProtoEventParametersResponse.fromMap(
              (map['parameters'] as Map).cast<String, dynamic>()),
      rollbackTaskImplementationClassName:
          map['rollbackTaskImplementationClassName'] as String,
      taskNumbersToRollback:
          (map['taskNumbersToRollback'] as List).cast<String>(),
    );
  }
}
