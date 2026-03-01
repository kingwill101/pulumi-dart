import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_task_args.dart';

/// Provides a ESS schedule resource.
///
/// For information about ess schedule task, see [Scheduled Tasks](https://www.alibabacloud.com/help/en/auto-scaling/latest/createscheduledtask).
///
/// > **NOTE:** Available since v1.60.0.
///
/// ## Import
///
/// ESS schedule task can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ess/scheduledTask:ScheduledTask example abc123456
/// ```
class ScheduledTask extends pulumi.CustomResource {
  /// Description of the scheduled task, which is 2-200 characters (English or Chinese) long.
  late final pulumi.Output<String> description;
  /// The expected number of instances in a scaling group when the scaling method of the scheduled task is to specify the number of instances in a scaling group. **NOTE:** You must specify the `DesiredCapacity` parameter when you create the scaling group.
  late final pulumi.Output<int?> desiredCapacity;
  /// The time period during which a failed scheduled task is retried. Unit: seconds. Valid values: 0 to 1800, Available since v1.240.0. Default value: 600
  late final pulumi.Output<int?> launchExpirationTime;
  /// The time at which the scheduled task is triggered. Specify the time in the ISO 8601 standard in the YYYY-MM-DDThh:mmZ format.
  /// The time must be in UTC. You cannot enter a time point later than 90 days from the date of scheduled task creation.
  /// If the `recurrence_type` parameter is specified, the task is executed repeatedly at the time specified by LaunchTime.
  /// Otherwise, the task is only executed once at the date and time specified by LaunchTime.
  late final pulumi.Output<String?> launchTime;
  /// The maximum number of instances in a scaling group when the scaling method of the scheduled task is to specify the number of instances in a scaling group.
  late final pulumi.Output<int?> maxValue;
  /// The minimum number of instances in a scaling group when the scaling method of the scheduled task is to specify the number of instances in a scaling group.
  late final pulumi.Output<int?> minValue;
  /// Specifies the end time after which the scheduled task is no longer repeated. Specify the time in the ISO 8601 standard in the YYYY-MM-DDThh:mm:ssZ format.
  /// The time must be in UTC. You cannot enter a time point later than 365 days from the date of scheduled task creation. **NOTE:** You must specify `RecurrenceType`, `RecurrenceValue`, and `RecurrenceEndTime` at the same time.
  late final pulumi.Output<String> recurrenceEndTime;
  /// Specifies the recurrence type of the scheduled task. **NOTE:** You must specify `RecurrenceType`, `RecurrenceValue`, and `RecurrenceEndTime` at the same time. Valid values:
  /// - Daily: The scheduled task is executed once every specified number of days.
  /// - Weekly: The scheduled task is executed on each specified day of a week.
  /// - Monthly: The scheduled task is executed on each specified day of a month.
  /// - Cron: (Available in 1.60.0+) The scheduled task is executed based on the specified cron expression.
  late final pulumi.Output<String> recurrenceType;
  /// Specifies how often a scheduled task recurs. **NOTE:** You must specify `RecurrenceType`, `RecurrenceValue`, and `RecurrenceEndTime` at the same time. The valid value depends on `recurrence_type`
  /// - Daily: You can enter one value. Valid values: 1 to 31.
  /// - Weekly: You can enter multiple values and separate them with commas (,). For example, the values 0 to 6 correspond to the days of the week in sequence from Sunday to Saturday.
  /// - Monthly: You can enter two values in A-B format. Valid values of A and B: 1 to 31. The value of B must be greater than or equal to the value of A.
  /// - Cron: You can enter a cron expression which is written in UTC and consists of five fields: minute, hour, day of month (date), month, and day of week. The expression can contain wildcard characters including commas (,), question marks (?), hyphens (-), asterisks (*), number signs (#), forward slashes (/), and the L and W letters.
  late final pulumi.Output<String> recurrenceValue;
  /// The ID of the scaling group where the number of instances is modified when the scheduled task is triggered. After the `ScalingGroupId` parameter is specified, the scaling method of the scheduled task is to specify the number of instances in a scaling group. You must specify at least one of the following parameters: `MinValue`, `MaxValue`, and `DesiredCapacity`. **NOTE:** You cannot specify `scheduled_action` and `scaling_group_id` at the same time.
  late final pulumi.Output<String> scalingGroupId;
  /// The operation to be performed when a scheduled task is triggered. Enter the unique identifier of a scaling rule. **NOTE:** You cannot specify `scheduled_action` and `scaling_group_id` at the same time.
  late final pulumi.Output<String?> scheduledAction;
  /// Display name of the scheduled task, which must be 2-40 characters (English or Chinese) long.
  late final pulumi.Output<String?> scheduledTaskName;
  /// Specifies whether to start the scheduled task. Default to true.
  late final pulumi.Output<bool?> taskEnabled;

  /// Creates a new [ScheduledTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledTask]. {@macro pulumi_ess_scheduled_task_scheduled_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledTask(
    String name, {
    ScheduledTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ess/scheduledTask:ScheduledTask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.desiredCapacity = registerOutput<int?>('desiredCapacity');
    this.launchExpirationTime = registerOutput<int?>('launchExpirationTime');
    this.launchTime = registerOutput<String?>('launchTime');
    this.maxValue = registerOutput<int?>('maxValue');
    this.minValue = registerOutput<int?>('minValue');
    this.recurrenceEndTime = registerOutput<String>('recurrenceEndTime');
    this.recurrenceType = registerOutput<String>('recurrenceType');
    this.recurrenceValue = registerOutput<String>('recurrenceValue');
    this.scalingGroupId = registerOutput<String>('scalingGroupId');
    this.scheduledAction = registerOutput<String?>('scheduledAction');
    this.scheduledTaskName = registerOutput<String?>('scheduledTaskName');
    this.taskEnabled = registerOutput<bool?>('taskEnabled');
  }
}
