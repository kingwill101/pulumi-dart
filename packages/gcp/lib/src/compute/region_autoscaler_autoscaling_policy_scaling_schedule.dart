// ignore_for_file: unused_element, unnecessary_cast

class RegionAutoscalerAutoscalingPolicyScalingSchedule {
  /// A description of a scaling schedule.
  final String? description;

  /// A boolean value that specifies if a scaling schedule can influence autoscaler recommendations. If set to true, then a scaling schedule has no effect.
  final bool? disabled;

  /// The duration of time intervals (in seconds) for which this scaling schedule will be running. The minimum allowed value is 300.
  final int durationSec;

  /// Minimum number of VM instances that autoscaler will recommend in time intervals starting according to schedule.
  final int minRequiredReplicas;

  /// The identifier for this object. Format specified above.
  final String name;

  /// The start timestamps of time intervals when this scaling schedule should provide a scaling signal. This field uses the extended cron format (with an optional year field).
  final String schedule;

  /// The time zone to be used when interpreting the schedule. The value of this field must be a time zone name from the tz database: http://en.wikipedia.org/wiki/Tz_database.
  final String? timeZone;

  /// Creates a new [RegionAutoscalerAutoscalingPolicyScalingSchedule].
  /// [description] A description of a scaling schedule.
  /// [disabled] A boolean value that specifies if a scaling schedule can influence autoscaler recommendations. If set to true, then a scaling schedule has no effect.
  /// [durationSec] The duration of time intervals (in seconds) for which this scaling schedule will be running. The minimum allowed value is 300.
  /// [minRequiredReplicas] Minimum number of VM instances that autoscaler will recommend in time intervals starting according to schedule.
  /// [name] The identifier for this object. Format specified above.
  /// [schedule] The start timestamps of time intervals when this scaling schedule should provide a scaling signal. This field uses the extended cron format (with an optional year field).
  /// [timeZone] The time zone to be used when interpreting the schedule. The value of this field must be a time zone name from the tz database: http://en.wikipedia.org/wiki/Tz_database.
  RegionAutoscalerAutoscalingPolicyScalingSchedule({
    this.description,
    this.disabled,
    required this.durationSec,
    required this.minRequiredReplicas,
    required this.name,
    required this.schedule,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['durationSec'] = durationSec;
    map['minRequiredReplicas'] = minRequiredReplicas;
    map['name'] = name;
    map['schedule'] = schedule;
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    return map;
  }

  factory RegionAutoscalerAutoscalingPolicyScalingSchedule.fromMap(
      Map<String, dynamic> map) {
    return RegionAutoscalerAutoscalingPolicyScalingSchedule(
      description:
          map['description'] == null ? null : map['description'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      durationSec: map['durationSec'] as int,
      minRequiredReplicas: map['minRequiredReplicas'] as int,
      name: map['name'] as String,
      schedule: map['schedule'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}
