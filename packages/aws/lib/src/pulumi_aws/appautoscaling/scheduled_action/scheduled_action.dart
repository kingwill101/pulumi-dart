import 'package:pulumi/pulumi.dart' as pulumi;
import '../scheduled_action_scalable_target_action/scheduled_action_scalable_target_action.dart';
import 'scheduled_action_args.dart';

/// Provides an Application AutoScaling ScheduledAction resource.
///
/// ## Example Usage
///
/// ### DynamoDB Table Autoscaling
///
///
///
/// ### ECS Service Autoscaling
class ScheduledAction extends pulumi.CustomResource {
  /// ARN of the scheduled action.
  late final pulumi.Output<String> arn;

  /// Date and time for the scheduled action to end in RFC 3339 format. The timezone is not affected by the setting of `timezone`.
  late final pulumi.Output<String?> endTime;

  /// Name of the scheduled action.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of the resource associated with the scheduled action. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html)
  late final pulumi.Output<String> resourceId;

  /// Scalable dimension. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html) Example: ecs:service:DesiredCount
  late final pulumi.Output<String> scalableDimension;

  /// New minimum and maximum capacity. You can set both values or just one. See below
  late final pulumi.Output<ScheduledActionScalableTargetAction>
      scalableTargetAction;

  /// Schedule for this action. The following formats are supported: At expressions - at(yyyy-mm-ddThh:mm:ss), Rate expressions - rate(valueunit), Cron expressions - cron(fields). Times for at expressions and cron expressions are evaluated using the time zone configured in `timezone`. Documentation can be found in the `Timezone` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html)
  late final pulumi.Output<String> schedule;

  /// Namespace of the AWS service. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html) Example: ecs
  late final pulumi.Output<String> serviceNamespace;

  /// Date and time for the scheduled action to start in RFC 3339 format. The timezone is not affected by the setting of `timezone`.
  late final pulumi.Output<String?> startTime;

  /// Time zone used when setting a scheduled action by using an at or cron expression. Does not affect timezone for `start_time` and `end_time`. Valid values are the [canonical names of the IANA time zones supported by Joda-Time](https://www.joda.org/joda-time/timezones.html), such as `Etc/GMT+9` or `Pacific/Tahiti`. Default is `UTC`.
  late final pulumi.Output<String?> timezone;

  ScheduledAction(
    String name, {
    ScheduledActionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appautoscaling/scheduledAction:ScheduledAction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.endTime = registerOutput<String?>('endTime');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.scalableDimension = registerOutput<String>('scalableDimension');
    this.scalableTargetAction =
        registerOutput<ScheduledActionScalableTargetAction>(
            'scalableTargetAction');
    this.schedule = registerOutput<String>('schedule');
    this.serviceNamespace = registerOutput<String>('serviceNamespace');
    this.startTime = registerOutput<String?>('startTime');
    this.timezone = registerOutput<String?>('timezone');
  }
}
