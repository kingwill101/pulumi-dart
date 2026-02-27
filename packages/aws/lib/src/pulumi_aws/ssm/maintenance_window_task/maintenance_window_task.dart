import 'package:pulumi/pulumi.dart' as pulumi;
import '../maintenance_window_task_target/maintenance_window_task_target.dart';
import '../maintenance_window_task_task_invocation_parameters/maintenance_window_task_task_invocation_parameters.dart';
import 'maintenance_window_task_args.dart';

/// Provides an SSM Maintenance Window Task resource
///
/// ## Example Usage
///
/// ### Automation Tasks
///
///
///
/// ### Lambda Tasks
///
///
///
/// ### Run Command Tasks
///
///
///
/// ### Step Function Tasks
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `window_id` - (String) ID of the maintenance window.
/// * `id` - (String) ID of the maintenance window task.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import AWS Maintenance Window Task using the `window_id` and `window_task_id` separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/maintenanceWindowTask:MaintenanceWindowTask example <window_id>/<window_task_id>
/// ```
class MaintenanceWindowTask extends pulumi.CustomResource {
  /// The ARN of the maintenance window task.
  late final pulumi.Output<String> arn;

  /// Indicates whether tasks should continue to run after the cutoff time specified in the maintenance windows is reached. Valid values are `CONTINUE_TASK` and `CANCEL_TASK`.
  late final pulumi.Output<String?> cutoffBehavior;

  /// The description of the maintenance window task.
  late final pulumi.Output<String?> description;

  /// The maximum number of targets this task can be run for in parallel.
  late final pulumi.Output<String> maxConcurrency;

  /// The maximum number of errors allowed before this task stops being scheduled.
  late final pulumi.Output<String> maxErrors;

  /// The name of the maintenance window task.
  late final pulumi.Output<String> name;

  /// The priority of the task in the Maintenance Window, the lower the number the higher the priority. Tasks in a Maintenance Window are scheduled in priority order with tasks that have the same priority scheduled in parallel.
  late final pulumi.Output<int?> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The role that should be assumed when executing the task. If a role is not provided, Systems Manager uses your account's service-linked role. If no service-linked role for Systems Manager exists in your account, it is created for you.
  late final pulumi.Output<String> serviceRoleArn;

  /// The targets (either instances or window target ids). Instances are specified using Key=InstanceIds,Values=instanceid1,instanceid2. Window target ids are specified using Key=WindowTargetIds,Values=window target id1, window target id2.
  late final pulumi.Output<List<MaintenanceWindowTaskTarget>?> targets;

  /// The ARN of the task to execute.
  late final pulumi.Output<String> taskArn;

  /// Configuration block with parameters for task execution.
  late final pulumi.Output<MaintenanceWindowTaskTaskInvocationParameters?>
      taskInvocationParameters;

  /// The type of task being registered. Valid values: `AUTOMATION`, `LAMBDA`, `RUN_COMMAND` or `STEP_FUNCTIONS`.
  late final pulumi.Output<String> taskType;

  /// The Id of the maintenance window to register the task with.
  late final pulumi.Output<String> windowId;

  /// The ID of the maintenance window task.
  late final pulumi.Output<String> windowTaskId;

  MaintenanceWindowTask(
    String name, {
    MaintenanceWindowTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/maintenanceWindowTask:MaintenanceWindowTask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cutoffBehavior = registerOutput<String?>('cutoffBehavior');
    this.description = registerOutput<String?>('description');
    this.maxConcurrency = registerOutput<String>('maxConcurrency');
    this.maxErrors = registerOutput<String>('maxErrors');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int?>('priority');
    this.region = registerOutput<String>('region');
    this.serviceRoleArn = registerOutput<String>('serviceRoleArn');
    this.targets =
        registerOutput<List<MaintenanceWindowTaskTarget>?>('targets');
    this.taskArn = registerOutput<String>('taskArn');
    this.taskInvocationParameters =
        registerOutput<MaintenanceWindowTaskTaskInvocationParameters?>(
            'taskInvocationParameters');
    this.taskType = registerOutput<String>('taskType');
    this.windowId = registerOutput<String>('windowId');
    this.windowTaskId = registerOutput<String>('windowTaskId');
  }
}
