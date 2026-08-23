// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MaintenanceWindow resources.
class MaintenanceWindowState {
  /// Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.
  final pulumi.Input<bool>? allowUnassociatedTargets;
  /// The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.
  final pulumi.Input<int>? cutoff;
  /// A description for the maintenance window.
  final pulumi.Input<String>? description;
  /// The duration of the Maintenance Window in hours.
  final pulumi.Input<int>? duration;
  /// Whether the maintenance window is enabled. Default: `true`.
  final pulumi.Input<bool>? enabled;
  /// Timestamp in [ISO-8601 extended format](https://www.iso.org/iso-8601-date-and-time-format.html) when to no longer run the maintenance window.
  final pulumi.Input<String>? endDate;
  /// The name of the maintenance window.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The schedule of the Maintenance Window in the form of a [cron or rate expression](https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html).
  final pulumi.Input<String>? schedule;
  /// The number of days to wait after the date and time specified by a CRON expression before running the maintenance window. Valid range is `1` to `6`.
  final pulumi.Input<int>? scheduleOffset;
  /// Timezone for schedule in [Internet Assigned Numbers Authority (IANA) Time Zone Database format](https://www.iana.org/time-zones). For example: `America/Los_Angeles`, `etc/UTC`, or `Asia/Seoul`.
  final pulumi.Input<String>? scheduleTimezone;
  /// Timestamp in [ISO-8601 extended format](https://www.iso.org/iso-8601-date-and-time-format.html) when to begin the maintenance window.
  final pulumi.Input<String>? startDate;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [MaintenanceWindowState].
  /// [allowUnassociatedTargets] Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.
  /// [cutoff] The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.
  /// [description] A description for the maintenance window.
  /// [duration] The duration of the Maintenance Window in hours.
  /// [enabled] Whether the maintenance window is enabled. Default: `true`.
  /// [endDate] Timestamp in [ISO-8601 extended format](https://www.iso.org/iso-8601-date-and-time-format.html) when to no longer run the maintenance window.
  /// [name] The name of the maintenance window.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedule] The schedule of the Maintenance Window in the form of a [cron or rate expression](https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html).
  /// [scheduleOffset] The number of days to wait after the date and time specified by a CRON expression before running the maintenance window. Valid range is `1` to `6`.
  /// [scheduleTimezone] Timezone for schedule in [Internet Assigned Numbers Authority (IANA) Time Zone Database format](https://www.iana.org/time-zones). For example: `America/Los_Angeles`, `etc/UTC`, or `Asia/Seoul`.
  /// [startDate] Timestamp in [ISO-8601 extended format](https://www.iso.org/iso-8601-date-and-time-format.html) when to begin the maintenance window.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const MaintenanceWindowState({
    this.allowUnassociatedTargets,
    this.cutoff,
    this.description,
    this.duration,
    this.enabled,
    this.endDate,
    this.name,
    this.region,
    this.schedule,
    this.scheduleOffset,
    this.scheduleTimezone,
    this.startDate,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowUnassociatedTargets': ?allowUnassociatedTargets,
      'cutoff': ?cutoff,
      'description': ?description,
      'duration': ?duration,
      'enabled': ?enabled,
      'endDate': ?endDate,
      'name': ?name,
      'region': ?region,
      'schedule': ?schedule,
      'scheduleOffset': ?scheduleOffset,
      'scheduleTimezone': ?scheduleTimezone,
      'startDate': ?startDate,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory MaintenanceWindowState.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowState(
      allowUnassociatedTargets: (() { final guardedValue = map['allowUnassociatedTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cutoff: (() { final guardedValue = map['cutoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleOffset: (() { final guardedValue = map['scheduleOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scheduleTimezone: (() { final guardedValue = map['scheduleTimezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
