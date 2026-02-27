import 'package:pulumi/pulumi.dart';
import '../schedule_flexible_time_window/schedule_flexible_time_window.dart';
import '../schedule_target/schedule_target.dart';
import 'schedule_args2.dart';

/// Provides an EventBridge Scheduler Schedule resource.
///
/// You can find out more about EventBridge Scheduler in the [User Guide](https://docs.aws.amazon.com/scheduler/latest/UserGuide/what-is-scheduler.html).
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Universal Target
///
///
///
/// ## Import
///
/// Using `pulumi import`, import schedules using the combination `group_name/name`. For example:
///
/// ```sh
/// $ pulumi import aws:scheduler/schedule:Schedule example my-schedule-group/my-schedule
/// ```
class Schedule2 extends CustomResource {
  /// Action that applies to the schedule after completing invocation of the target. Valid values are `NONE` and `DELETE`. Defaults to `NONE`.
  late final Output<String> actionAfterCompletion;

  /// ARN of the schedule.
  late final Output<String> arn;

  /// Brief description of the schedule.
  late final Output<String?> description;

  /// The date, in UTC, before which the schedule can invoke its target. Depending on the schedule's recurrence expression, invocations might stop on, or before, the end date you specify. EventBridge Scheduler ignores the end date for one-time schedules. Example: `2030-01-01T01:00:00Z`.
  late final Output<String?> endDate;

  /// Configures a time window during which EventBridge Scheduler invokes the schedule. Detailed below.
  late final Output<ScheduleFlexibleTimeWindow> flexibleTimeWindow;

  /// Name of the schedule group to associate with this schedule. When omitted, the `default` schedule group is used.
  late final Output<String> groupName;

  /// ARN for the customer managed KMS key that EventBridge Scheduler will use to encrypt and decrypt your data.
  late final Output<String?> kmsKeyArn;

  /// Name of the schedule. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Defines when the schedule runs. Read more in [Schedule types on EventBridge Scheduler](https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html).
  late final Output<String> scheduleExpression;

  /// Timezone in which the scheduling expression is evaluated. Defaults to `UTC`. Example: `Australia/Sydney`.
  late final Output<String?> scheduleExpressionTimezone;

  /// The date, in UTC, after which the schedule can begin invoking its target. Depending on the schedule's recurrence expression, invocations might occur on, or after, the start date you specify. EventBridge Scheduler ignores the start date for one-time schedules. Example: `2030-01-01T01:00:00Z`.
  late final Output<String?> startDate;

  /// Specifies whether the schedule is enabled or disabled. One of: `ENABLED` (default), `DISABLED`.
  late final Output<String?> state;

  /// Configures the target of the schedule. Detailed below.
  ///
  /// The following arguments are optional:
  late final Output<ScheduleTarget> target;

  Schedule2(
    String name, {
    ScheduleArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:scheduler/schedule:Schedule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actionAfterCompletion =
        registerOutput<String>('actionAfterCompletion');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.endDate = registerOutput<String?>('endDate');
    this.flexibleTimeWindow =
        registerOutput<ScheduleFlexibleTimeWindow>('flexibleTimeWindow');
    this.groupName = registerOutput<String>('groupName');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.scheduleExpression = registerOutput<String>('scheduleExpression');
    this.scheduleExpressionTimezone =
        registerOutput<String?>('scheduleExpressionTimezone');
    this.startDate = registerOutput<String?>('startDate');
    this.state = registerOutput<String?>('state');
    this.target = registerOutput<ScheduleTarget>('target');
  }
}
