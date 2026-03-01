// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_action_scalable_target_action.dart';

/// Input properties used for looking up and filtering ScheduledAction resources.
class ScheduledActionState {
  /// ARN of the scheduled action.
  final pulumi.Input<String>? arn;
  /// Date and time for the scheduled action to end in RFC 3339 format. The timezone is not affected by the setting of `timezone`.
  final pulumi.Input<String>? endTime;
  /// Name of the scheduled action.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the resource associated with the scheduled action. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html)
  final pulumi.Input<String>? resourceId;
  /// Scalable dimension. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html) Example: ecs:service:DesiredCount
  final pulumi.Input<String>? scalableDimension;
  /// New minimum and maximum capacity. You can set both values or just one. See below
  final pulumi.Input<ScheduledActionScalableTargetAction>? scalableTargetAction;
  /// Schedule for this action. The following formats are supported: At expressions - at(yyyy-mm-ddThh:mm:ss), Rate expressions - rate(valueunit), Cron expressions - cron(fields). Times for at expressions and cron expressions are evaluated using the time zone configured in `timezone`. Documentation can be found in the `Timezone` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html)
  final pulumi.Input<String>? schedule;
  /// Namespace of the AWS service. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html) Example: ecs
  final pulumi.Input<String>? serviceNamespace;
  /// Date and time for the scheduled action to start in RFC 3339 format. The timezone is not affected by the setting of `timezone`.
  final pulumi.Input<String>? startTime;
  /// Time zone used when setting a scheduled action by using an at or cron expression. Does not affect timezone for `start_time` and `end_time`. Valid values are the [canonical names of the IANA time zones supported by Joda-Time](https://www.joda.org/joda-time/timezones.html), such as `Etc/GMT+9` or `Pacific/Tahiti`. Default is `UTC`.
  final pulumi.Input<String>? timezone;

  /// Creates a new [ScheduledActionState].
  /// [arn] ARN of the scheduled action.
  /// [endTime] Date and time for the scheduled action to end in RFC 3339 format. The timezone is not affected by the setting of `timezone`.
  /// [name] Name of the scheduled action.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] Identifier of the resource associated with the scheduled action. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html)
  /// [scalableDimension] Scalable dimension. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html) Example: ecs:service:DesiredCount
  /// [scalableTargetAction] New minimum and maximum capacity. You can set both values or just one. See below
  /// [schedule] Schedule for this action. The following formats are supported: At expressions - at(yyyy-mm-ddThh:mm:ss), Rate expressions - rate(valueunit), Cron expressions - cron(fields). Times for at expressions and cron expressions are evaluated using the time zone configured in `timezone`. Documentation can be found in the `Timezone` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html)
  /// [serviceNamespace] Namespace of the AWS service. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html) Example: ecs
  /// [startTime] Date and time for the scheduled action to start in RFC 3339 format. The timezone is not affected by the setting of `timezone`.
  /// [timezone] Time zone used when setting a scheduled action by using an at or cron expression. Does not affect timezone for `start_time` and `end_time`. Valid values are the [canonical names of the IANA time zones supported by Joda-Time](https://www.joda.org/joda-time/timezones.html), such as `Etc/GMT+9` or `Pacific/Tahiti`. Default is `UTC`.
  ScheduledActionState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? scalableDimension,
    pulumi.Output<ScheduledActionScalableTargetAction>? scalableTargetAction,
    pulumi.Output<String>? schedule,
    pulumi.Output<String>? serviceNamespace,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? timezone,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      scalableDimension = pulumi.Input.asOptionalInput<String>(scalableDimension),
      scalableTargetAction = pulumi.Input.asOptionalInput<ScheduledActionScalableTargetAction>(scalableTargetAction),
      schedule = pulumi.Input.asOptionalInput<String>(schedule),
      serviceNamespace = pulumi.Input.asOptionalInput<String>(serviceNamespace),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      timezone = pulumi.Input.asOptionalInput<String>(timezone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'endTime': ?endTime,
      'name': ?name,
      'region': ?region,
      'resourceId': ?resourceId,
      'scalableDimension': ?scalableDimension,
      'scalableTargetAction': ?pulumi.Input.mapOptionalInputValue<ScheduledActionScalableTargetAction, Map<String, dynamic>>(scalableTargetAction, (value) => value.toMap()),
      'schedule': ?schedule,
      'serviceNamespace': ?serviceNamespace,
      'startTime': ?startTime,
      'timezone': ?timezone,
    };
  }

  factory ScheduledActionState.fromMap(Map<String, dynamic> map) {
    return ScheduledActionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      scalableDimension: map['scalableDimension'] == null ? null : pulumi.Output.create<String>(map['scalableDimension'] as String),
      scalableTargetAction: map['scalableTargetAction'] == null ? null : pulumi.Output.create<ScheduledActionScalableTargetAction>(ScheduledActionScalableTargetAction.fromMap((map['scalableTargetAction'] as Map).cast<String, dynamic>())),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<String>(map['schedule'] as String),
      serviceNamespace: map['serviceNamespace'] == null ? null : pulumi.Output.create<String>(map['serviceNamespace'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      timezone: map['timezone'] == null ? null : pulumi.Output.create<String>(map['timezone'] as String),
    );
  }
}

