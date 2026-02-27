// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../scheduled_action_scalable_target_action/scheduled_action_scalable_target_action.dart';

/// The set of arguments for ScheduledAction.
class ScheduledActionArgs {
  /// Date and time for the scheduled action to end in RFC 3339 format. The timezone is not affected by the setting of `timezone`.
  final Input<String>? endTime;

  /// Name of the scheduled action.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of the resource associated with the scheduled action. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html)
  final Input<String> resourceId;

  /// Scalable dimension. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html) Example: ecs:service:DesiredCount
  final Input<String> scalableDimension;

  /// New minimum and maximum capacity. You can set both values or just one. See below
  final Input<ScheduledActionScalableTargetAction> scalableTargetAction;

  /// Schedule for this action. The following formats are supported: At expressions - at(yyyy-mm-ddThh:mm:ss), Rate expressions - rate(valueunit), Cron expressions - cron(fields). Times for at expressions and cron expressions are evaluated using the time zone configured in `timezone`. Documentation can be found in the `Timezone` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html)
  final Input<String> schedule;

  /// Namespace of the AWS service. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html) Example: ecs
  final Input<String> serviceNamespace;

  /// Date and time for the scheduled action to start in RFC 3339 format. The timezone is not affected by the setting of `timezone`.
  final Input<String>? startTime;

  /// Time zone used when setting a scheduled action by using an at or cron expression. Does not affect timezone for `start_time` and `end_time`. Valid values are the [canonical names of the IANA time zones supported by Joda-Time](https://www.joda.org/joda-time/timezones.html), such as `Etc/GMT+9` or `Pacific/Tahiti`. Default is `UTC`.
  final Input<String>? timezone;

  ScheduledActionArgs({
    this.endTime,
    this.name,
    this.region,
    required this.resourceId,
    required this.scalableDimension,
    required this.scalableTargetAction,
    required this.schedule,
    required this.serviceNamespace,
    this.startTime,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceId'] = resourceId;
    map['scalableDimension'] = scalableDimension;
    map['scalableTargetAction'] = Input.mapInputValue<
        ScheduledActionScalableTargetAction,
        Map<String, dynamic>>(scalableTargetAction, (value) => value.toMap());
    map['schedule'] = schedule;
    map['serviceNamespace'] = serviceNamespace;
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final timezoneValue = timezone;
    if (timezoneValue != null) {
      map['timezone'] = timezoneValue;
    }
    return map;
  }

  factory ScheduledActionArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledActionArgs(
      endTime: Input.asOptionalInput<String>(map['endTime']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceId: Input.asInput<String>(map['resourceId']),
      scalableDimension: Input.asInput<String>(map['scalableDimension']),
      scalableTargetAction: Input.asInput<ScheduledActionScalableTargetAction>(
          map['scalableTargetAction']),
      schedule: Input.asInput<String>(map['schedule']),
      serviceNamespace: Input.asInput<String>(map['serviceNamespace']),
      startTime: Input.asOptionalInput<String>(map['startTime']),
      timezone: Input.asOptionalInput<String>(map['timezone']),
    );
  }
}
