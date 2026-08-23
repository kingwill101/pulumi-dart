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
  /// Time zone used when setting a scheduled action by using an at or cron expression. Does not affect timezone for `startTime` and `endTime`. Valid values are the [canonical names of the IANA time zones supported by Joda-Time](https://www.joda.org/joda-time/timezones.html), such as `Etc/GMT+9` or `Pacific/Tahiti`. Default is `UTC`.
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
  /// [timezone] Time zone used when setting a scheduled action by using an at or cron expression. Does not affect timezone for `startTime` and `endTime`. Valid values are the [canonical names of the IANA time zones supported by Joda-Time](https://www.joda.org/joda-time/timezones.html), such as `Etc/GMT+9` or `Pacific/Tahiti`. Default is `UTC`.
  const ScheduledActionState({
    this.arn,
    this.endTime,
    this.name,
    this.region,
    this.resourceId,
    this.scalableDimension,
    this.scalableTargetAction,
    this.schedule,
    this.serviceNamespace,
    this.startTime,
    this.timezone,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalableDimension: (() { final guardedValue = map['scalableDimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalableTargetAction: (() { final guardedValue = map['scalableTargetAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduledActionScalableTargetAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceNamespace: (() { final guardedValue = map['serviceNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
