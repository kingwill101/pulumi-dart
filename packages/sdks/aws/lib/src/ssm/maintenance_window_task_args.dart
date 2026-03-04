// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_task_target.dart';
import 'maintenance_window_task_task_invocation_parameters.dart';

/// {@template pulumi_ssm_maintenance_window_task_maintenance_window_task_args_doc}
/// The set of arguments for MaintenanceWindowTask.
/// {@endtemplate}
/// {@macro pulumi_ssm_maintenance_window_task_maintenance_window_task_args_doc}
class MaintenanceWindowTaskArgs {
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
  final pulumi.Input<String> taskArn;

  /// Configuration block with parameters for task execution.
  final pulumi.Input<MaintenanceWindowTaskTaskInvocationParameters>?
  taskInvocationParameters;

  /// The type of task being registered. Valid values: `AUTOMATION`, `LAMBDA`, `RUN_COMMAND` or `STEP_FUNCTIONS`.
  final pulumi.Input<String> taskType;

  /// The Id of the maintenance window to register the task with.
  final pulumi.Input<String> windowId;

  /// Creates a new [MaintenanceWindowTaskArgs].
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
    return <String, dynamic>{
      'cutoffBehavior': ?cutoffBehavior,
      'description': ?description,
      'maxConcurrency': ?maxConcurrency,
      'maxErrors': ?maxErrors,
      'name': ?name,
      'priority': ?priority,
      'region': ?region,
      'serviceRoleArn': ?serviceRoleArn,
      'targets':
          ?pulumi.Input.mapOptionalInputValue<
            List<MaintenanceWindowTaskTarget>,
            List<Map<String, dynamic>>
          >(
            targets,
            (value) =>
                pulumi.Input.encodeList<
                  MaintenanceWindowTaskTarget,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'taskArn': taskArn,
      'taskInvocationParameters':
          ?pulumi.Input.mapOptionalInputValue<
            MaintenanceWindowTaskTaskInvocationParameters,
            Map<String, dynamic>
          >(taskInvocationParameters, (value) => value.toMap()),
      'taskType': taskType,
      'windowId': windowId,
    };
  }

  factory MaintenanceWindowTaskArgs.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskArgs(
      cutoffBehavior: (() {
        final guardedValue = map['cutoffBehavior'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxConcurrency: (() {
        final guardedValue = map['maxConcurrency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxErrors: (() {
        final guardedValue = map['maxErrors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceRoleArn: (() {
        final guardedValue = map['serviceRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targets: (() {
        final guardedValue = map['targets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MaintenanceWindowTaskTarget>(
            guardedValue,
            (value) => MaintenanceWindowTaskTarget.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      taskArn: pulumi.Input.fromValue(map['taskArn'] as String),
      taskInvocationParameters: (() {
        final guardedValue = map['taskInvocationParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MaintenanceWindowTaskTaskInvocationParameters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
      windowId: pulumi.Input.fromValue(map['windowId'] as String),
    );
  }
}
