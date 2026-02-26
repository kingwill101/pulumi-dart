// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../maintenance_window_task_target/maintenance_window_task_target.dart';
import '../maintenance_window_task_task_invocation_parameters/maintenance_window_task_task_invocation_parameters.dart';

/// The set of arguments for MaintenanceWindowTask.
class MaintenanceWindowTaskArgs {
  /// Indicates whether tasks should continue to run after the cutoff time specified in the maintenance windows is reached. Valid values are `CONTINUE_TASK` and `CANCEL_TASK`.
  final Input<String>? cutoffBehavior;

  /// The description of the maintenance window task.
  final Input<String>? description;

  /// The maximum number of targets this task can be run for in parallel.
  final Input<String>? maxConcurrency;

  /// The maximum number of errors allowed before this task stops being scheduled.
  final Input<String>? maxErrors;

  /// The name of the maintenance window task.
  final Input<String>? name;

  /// The priority of the task in the Maintenance Window, the lower the number the higher the priority. Tasks in a Maintenance Window are scheduled in priority order with tasks that have the same priority scheduled in parallel.
  final Input<int>? priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The role that should be assumed when executing the task. If a role is not provided, Systems Manager uses your account's service-linked role. If no service-linked role for Systems Manager exists in your account, it is created for you.
  final Input<String>? serviceRoleArn;

  /// The targets (either instances or window target ids). Instances are specified using Key=InstanceIds,Values=instanceid1,instanceid2. Window target ids are specified using Key=WindowTargetIds,Values=window target id1, window target id2.
  final Input<List<MaintenanceWindowTaskTarget>>? targets;

  /// The ARN of the task to execute.
  final Input<String> taskArn;

  /// Configuration block with parameters for task execution.
  final Input<MaintenanceWindowTaskTaskInvocationParameters>?
      taskInvocationParameters;

  /// The type of task being registered. Valid values: `AUTOMATION`, `LAMBDA`, `RUN_COMMAND` or `STEP_FUNCTIONS`.
  final Input<String> taskType;

  /// The Id of the maintenance window to register the task with.
  final Input<String> windowId;

  MaintenanceWindowTaskArgs({
    this.cutoffBehavior,
    this.description,
    this.maxConcurrency,
    this.maxErrors,
    this.name,
    this.priority,
    this.region,
    this.serviceRoleArn,
    this.targets,
    required this.taskArn,
    this.taskInvocationParameters,
    required this.taskType,
    required this.windowId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cutoffBehaviorValue = cutoffBehavior;
    if (cutoffBehaviorValue != null) {
      map['cutoffBehavior'] = cutoffBehaviorValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final maxConcurrencyValue = maxConcurrency;
    if (maxConcurrencyValue != null) {
      map['maxConcurrency'] = maxConcurrencyValue;
    }
    final maxErrorsValue = maxErrors;
    if (maxErrorsValue != null) {
      map['maxErrors'] = maxErrorsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serviceRoleArnValue = serviceRoleArn;
    if (serviceRoleArnValue != null) {
      map['serviceRoleArn'] = serviceRoleArnValue;
    }
    final targetsValue = targets;
    if (targetsValue != null) {
      map['targets'] = Input.mapOptionalInputValue<
              List<MaintenanceWindowTaskTarget>, List<Map<String, dynamic>>>(
          targetsValue,
          (value) => Input.encodeList<MaintenanceWindowTaskTarget,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['taskArn'] = taskArn;
    final taskInvocationParametersValue = taskInvocationParameters;
    if (taskInvocationParametersValue != null) {
      map['taskInvocationParameters'] = Input.mapOptionalInputValue<
              MaintenanceWindowTaskTaskInvocationParameters,
              Map<String, dynamic>>(
          taskInvocationParametersValue, (value) => value.toMap());
    }
    map['taskType'] = taskType;
    map['windowId'] = windowId;
    return map;
  }

  factory MaintenanceWindowTaskArgs.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskArgs(
      cutoffBehavior: Input.asOptionalInput<String>(map['cutoffBehavior']),
      description: Input.asOptionalInput<String>(map['description']),
      maxConcurrency: Input.asOptionalInput<String>(map['maxConcurrency']),
      maxErrors: Input.asOptionalInput<String>(map['maxErrors']),
      name: Input.asOptionalInput<String>(map['name']),
      priority: Input.asOptionalInput<int>(map['priority']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceRoleArn: Input.asOptionalInput<String>(map['serviceRoleArn']),
      targets: Input.asOptionalInput<List<MaintenanceWindowTaskTarget>>(
          map['targets']),
      taskArn: Input.asInput<String>(map['taskArn']),
      taskInvocationParameters:
          Input.asOptionalInput<MaintenanceWindowTaskTaskInvocationParameters>(
              map['taskInvocationParameters']),
      taskType: Input.asInput<String>(map['taskType']),
      windowId: Input.asInput<String>(map['windowId']),
    );
  }
}
