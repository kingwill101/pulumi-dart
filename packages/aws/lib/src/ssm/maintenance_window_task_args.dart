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
    String? cutoffBehavior,
    String? description,
    String? maxConcurrency,
    String? maxErrors,
    String? name,
    int? priority,
    String? region,
    String? serviceRoleArn,
    List<MaintenanceWindowTaskTarget>? targets,
    required String taskArn,
    MaintenanceWindowTaskTaskInvocationParameters? taskInvocationParameters,
    required String taskType,
    required String windowId,
  })  : cutoffBehavior = pulumi.Input.asOptionalInput<String>(cutoffBehavior),
        description = pulumi.Input.asOptionalInput<String>(description),
        maxConcurrency = pulumi.Input.asOptionalInput<String>(maxConcurrency),
        maxErrors = pulumi.Input.asOptionalInput<String>(maxErrors),
        name = pulumi.Input.asOptionalInput<String>(name),
        priority = pulumi.Input.asOptionalInput<int>(priority),
        region = pulumi.Input.asOptionalInput<String>(region),
        serviceRoleArn = pulumi.Input.asOptionalInput<String>(serviceRoleArn),
        targets =
            pulumi.Input.asOptionalInput<List<MaintenanceWindowTaskTarget>>(
                targets),
        taskArn = pulumi.Input.asInput<String>(taskArn),
        taskInvocationParameters = pulumi.Input.asOptionalInput<
                MaintenanceWindowTaskTaskInvocationParameters>(
            taskInvocationParameters),
        taskType = pulumi.Input.asInput<String>(taskType),
        windowId = pulumi.Input.asInput<String>(windowId);

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
      map['targets'] = pulumi.Input.mapOptionalInputValue<
              List<MaintenanceWindowTaskTarget>, List<Map<String, dynamic>>>(
          targetsValue,
          (value) => pulumi.Input.encodeList<MaintenanceWindowTaskTarget,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['taskArn'] = taskArn;
    final taskInvocationParametersValue = taskInvocationParameters;
    if (taskInvocationParametersValue != null) {
      map['taskInvocationParameters'] = pulumi.Input.mapOptionalInputValue<
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
      cutoffBehavior: map['cutoffBehavior'] == null
          ? null
          : map['cutoffBehavior'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      maxConcurrency: map['maxConcurrency'] == null
          ? null
          : map['maxConcurrency'] as String,
      maxErrors: map['maxErrors'] == null ? null : map['maxErrors'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      serviceRoleArn: map['serviceRoleArn'] == null
          ? null
          : map['serviceRoleArn'] as String,
      targets: map['targets'] == null
          ? null
          : pulumi.Input.decodeList<MaintenanceWindowTaskTarget>(
              map['targets'],
              (value) => MaintenanceWindowTaskTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
      taskArn: map['taskArn'] as String,
      taskInvocationParameters: map['taskInvocationParameters'] == null
          ? null
          : MaintenanceWindowTaskTaskInvocationParameters.fromMap(
              (map['taskInvocationParameters'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
      windowId: map['windowId'] as String,
    );
  }
}
