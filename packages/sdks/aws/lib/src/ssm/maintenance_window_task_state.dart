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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? cutoffBehavior,
    pulumi.Output<String>? description,
    pulumi.Output<String>? maxConcurrency,
    pulumi.Output<String>? maxErrors,
    pulumi.Output<String>? name,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceRoleArn,
    pulumi.Output<List<MaintenanceWindowTaskTarget>>? targets,
    pulumi.Output<String>? taskArn,
    pulumi.Output<MaintenanceWindowTaskTaskInvocationParameters>? taskInvocationParameters,
    pulumi.Output<String>? taskType,
    pulumi.Output<String>? windowId,
    pulumi.Output<String>? windowTaskId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cutoffBehavior = pulumi.Input.asOptionalInput<String>(cutoffBehavior),
      description = pulumi.Input.asOptionalInput<String>(description),
      maxConcurrency = pulumi.Input.asOptionalInput<String>(maxConcurrency),
      maxErrors = pulumi.Input.asOptionalInput<String>(maxErrors),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceRoleArn = pulumi.Input.asOptionalInput<String>(serviceRoleArn),
      targets = pulumi.Input.asOptionalInput<List<MaintenanceWindowTaskTarget>>(targets),
      taskArn = pulumi.Input.asOptionalInput<String>(taskArn),
      taskInvocationParameters = pulumi.Input.asOptionalInput<MaintenanceWindowTaskTaskInvocationParameters>(taskInvocationParameters),
      taskType = pulumi.Input.asOptionalInput<String>(taskType),
      windowId = pulumi.Input.asOptionalInput<String>(windowId),
      windowTaskId = pulumi.Input.asOptionalInput<String>(windowTaskId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cutoffBehavior: map['cutoffBehavior'] == null ? null : pulumi.Output.create<String>(map['cutoffBehavior'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      maxConcurrency: map['maxConcurrency'] == null ? null : pulumi.Output.create<String>(map['maxConcurrency'] as String),
      maxErrors: map['maxErrors'] == null ? null : pulumi.Output.create<String>(map['maxErrors'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceRoleArn: map['serviceRoleArn'] == null ? null : pulumi.Output.create<String>(map['serviceRoleArn'] as String),
      targets: map['targets'] == null ? null : pulumi.Output.create<List<MaintenanceWindowTaskTarget>>(pulumi.Input.decodeList<MaintenanceWindowTaskTarget>(map['targets'], (value) => MaintenanceWindowTaskTarget.fromMap((value as Map).cast<String, dynamic>()))),
      taskArn: map['taskArn'] == null ? null : pulumi.Output.create<String>(map['taskArn'] as String),
      taskInvocationParameters: map['taskInvocationParameters'] == null ? null : pulumi.Output.create<MaintenanceWindowTaskTaskInvocationParameters>(MaintenanceWindowTaskTaskInvocationParameters.fromMap((map['taskInvocationParameters'] as Map).cast<String, dynamic>())),
      taskType: map['taskType'] == null ? null : pulumi.Output.create<String>(map['taskType'] as String),
      windowId: map['windowId'] == null ? null : pulumi.Output.create<String>(map['windowId'] as String),
      windowTaskId: map['windowTaskId'] == null ? null : pulumi.Output.create<String>(map['windowTaskId'] as String),
    );
  }
}

