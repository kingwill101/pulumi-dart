// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_task_target.dart';
import 'maintenance_window_task_task_invocation_parameters.dart';

/// Input properties used for looking up and filtering MaintenanceWindowTask resources.
class MaintenanceWindowTaskState {
  /// The ARN of the maintenance window task.
  final pulumi.Input<String>? arn;
  /// Indicates whether tasks should continue to run after the cutoff time specified in the maintenance windows is reached. Valid values are `CONTINUE_TASK` and `CANCEL_TASK`.
  final pulumi.Input<String>? cutoffBehavior;
  /// The description of the maintenance window task.
  final pulumi.Input<String>? description;
  /// The maximum number of targets this task can be run for in parallel.
  final pulumi.Input<String>? maxConcurrency;
  /// The maximum number of errors allowed before this task stops being scheduled.
  final pulumi.Input<String>? maxErrors;
  /// The name of the maintenance window task.
  final pulumi.Input<String>? name;
  /// The priority of the task in the Maintenance Window, the lower the number the higher the priority. Tasks in a Maintenance Window are scheduled in priority order with tasks that have the same priority scheduled in parallel.
  final pulumi.Input<int>? priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The role that should be assumed when executing the task. If a role is not provided, Systems Manager uses your account's service-linked role. If no service-linked role for Systems Manager exists in your account, it is created for you.
  final pulumi.Input<String>? serviceRoleArn;
  /// The targets (either instances or window target ids). Instances are specified using Key=InstanceIds,Values=instanceid1,instanceid2. Window target ids are specified using Key=WindowTargetIds,Values=window target id1, window target id2.
  final pulumi.Input<List<MaintenanceWindowTaskTarget>>? targets;
  /// The ARN of the task to execute.
  final pulumi.Input<String>? taskArn;
  /// Configuration block with parameters for task execution.
  final pulumi.Input<MaintenanceWindowTaskTaskInvocationParameters>? taskInvocationParameters;
  /// The type of task being registered. Valid values: `AUTOMATION`, `LAMBDA`, `RUN_COMMAND` or `STEP_FUNCTIONS`.
  final pulumi.Input<String>? taskType;
  /// The Id of the maintenance window to register the task with.
  final pulumi.Input<String>? windowId;
  /// The ID of the maintenance window task.
  final pulumi.Input<String>? windowTaskId;

  /// Creates a new [MaintenanceWindowTaskState].
  /// [arn] The ARN of the maintenance window task.
  /// [cutoffBehavior] Indicates whether tasks should continue to run after the cutoff time specified in the maintenance windows is reached. Valid values are `CONTINUE_TASK` and `CANCEL_TASK`.
  /// [description] The description of the maintenance window task.
  /// [maxConcurrency] The maximum number of targets this task can be run for in parallel.
  /// [maxErrors] The maximum number of errors allowed before this task stops being scheduled.
  /// [name] The name of the maintenance window task.
  /// [priority] The priority of the task in the Maintenance Window, the lower the number the higher the priority. Tasks in a Maintenance Window are scheduled in priority order with tasks that have the same priority scheduled in parallel.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceRoleArn] The role that should be assumed when executing the task. If a role is not provided, Systems Manager uses your account's service-linked role. If no service-linked role for Systems Manager exists in your account, it is created for you.
  /// [targets] The targets (either instances or window target ids). Instances are specified using Key=InstanceIds,Values=instanceid1,instanceid2. Window target ids are specified using Key=WindowTargetIds,Values=window target id1, window target id2.
  /// [taskArn] The ARN of the task to execute.
  /// [taskInvocationParameters] Configuration block with parameters for task execution.
  /// [taskType] The type of task being registered. Valid values: `AUTOMATION`, `LAMBDA`, `RUN_COMMAND` or `STEP_FUNCTIONS`.
  /// [windowId] The Id of the maintenance window to register the task with.
  /// [windowTaskId] The ID of the maintenance window task.
  MaintenanceWindowTaskState({
    this.arn,
    this.cutoffBehavior,
    this.description,
    this.maxConcurrency,
    this.maxErrors,
    this.name,
    this.priority,
    this.region,
    this.serviceRoleArn,
    this.targets,
    this.taskArn,
    this.taskInvocationParameters,
    this.taskType,
    this.windowId,
    this.windowTaskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cutoffBehavior': ?cutoffBehavior,
      'description': ?description,
      'maxConcurrency': ?maxConcurrency,
      'maxErrors': ?maxErrors,
      'name': ?name,
      'priority': ?priority,
      'region': ?region,
      'serviceRoleArn': ?serviceRoleArn,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<MaintenanceWindowTaskTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<MaintenanceWindowTaskTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'taskArn': ?taskArn,
      'taskInvocationParameters': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindowTaskTaskInvocationParameters, Map<String, dynamic>>(taskInvocationParameters, (value) => value.toMap()),
      'taskType': ?taskType,
      'windowId': ?windowId,
      'windowTaskId': ?windowTaskId,
    };
  }

  factory MaintenanceWindowTaskState.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      cutoffBehavior: map['cutoffBehavior'] == null ? null : (map['cutoffBehavior'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      maxConcurrency: map['maxConcurrency'] == null ? null : (map['maxConcurrency'] as String).input(),
      maxErrors: map['maxErrors'] == null ? null : (map['maxErrors'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serviceRoleArn: map['serviceRoleArn'] == null ? null : (map['serviceRoleArn'] as String).input(),
      targets: map['targets'] == null ? null : (pulumi.Input.decodeList<MaintenanceWindowTaskTarget>(map['targets'], (value) => MaintenanceWindowTaskTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
      taskArn: map['taskArn'] == null ? null : (map['taskArn'] as String).input(),
      taskInvocationParameters: map['taskInvocationParameters'] == null ? null : (MaintenanceWindowTaskTaskInvocationParameters.fromMap((map['taskInvocationParameters'] as Map).cast<String, dynamic>())).input(),
      taskType: map['taskType'] == null ? null : (map['taskType'] as String).input(),
      windowId: map['windowId'] == null ? null : (map['windowId'] as String).input(),
      windowTaskId: map['windowTaskId'] == null ? null : (map['windowTaskId'] as String).input(),
    );
  }
}

