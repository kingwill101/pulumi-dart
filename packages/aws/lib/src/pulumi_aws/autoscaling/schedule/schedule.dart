import 'package:pulumi/pulumi.dart';
import 'schedule_args.dart';

/// Provides an AutoScaling Schedule resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AutoScaling ScheduledAction using the `auto-scaling-group-name` and `scheduled-action-name`. For example:
///
/// ```sh
/// $ pulumi import aws:autoscaling/schedule:Schedule resource-name auto-scaling-group-name/scheduled-action-name
/// ```
class Schedule extends CustomResource {
  /// ARN assigned by AWS to the autoscaling schedule.
  late final Output<String> arn;

  /// The name of the Auto Scaling group.
  late final Output<String> autoscalingGroupName;

  /// The initial capacity of the Auto Scaling group after the scheduled action runs and the capacity it attempts to maintain. Set to `-1` if you don't want to change the desired capacity at the scheduled time. Defaults to `0`.
  late final Output<int> desiredCapacity;

  /// The date and time for the recurring schedule to end, in UTC with the format `"YYYY-MM-DDThh:mm:ssZ"` (e.g. `"2021-06-01T00:00:00Z"`).
  late final Output<String> endTime;

  /// The maximum size of the Auto Scaling group. Set to `-1` if you don't want to change the maximum size at the scheduled time. Defaults to `0`.
  late final Output<int> maxSize;

  /// The minimum size of the Auto Scaling group. Set to `-1` if you don't want to change the minimum size at the scheduled time. Defaults to `0`.
  late final Output<int> minSize;

  /// The recurring schedule for this action specified using the Unix cron syntax format.
  late final Output<String> recurrence;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of this scaling action.
  ///
  /// The following arguments are optional:
  late final Output<String> scheduledActionName;

  /// The date and time for the recurring schedule to start, in UTC with the format `"YYYY-MM-DDThh:mm:ssZ"` (e.g. `"2021-06-01T00:00:00Z"`).
  late final Output<String> startTime;

  /// Specifies the time zone for a cron expression. Valid values are the canonical names of the IANA time zones (such as `Etc/GMT+9` or `Pacific/Tahiti`).
  ///
  /// > **NOTE:** When `start_time` and `end_time` are specified with `recurrence` , they form the boundaries of when the recurring action will start and stop.
  late final Output<String> timeZone;

  Schedule(
    String name, {
    ScheduleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/schedule:Schedule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    this.desiredCapacity = registerOutput<int>('desiredCapacity');
    this.endTime = registerOutput<String>('endTime');
    this.maxSize = registerOutput<int>('maxSize');
    this.minSize = registerOutput<int>('minSize');
    this.recurrence = registerOutput<String>('recurrence');
    this.region = registerOutput<String>('region');
    this.scheduledActionName = registerOutput<String>('scheduledActionName');
    this.startTime = registerOutput<String>('startTime');
    this.timeZone = registerOutput<String>('timeZone');
  }
}
