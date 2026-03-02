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
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  MaintenanceWindowState({
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
      allowUnassociatedTargets: map['allowUnassociatedTargets'] == null ? null : (map['allowUnassociatedTargets'] as bool).input(),
      cutoff: map['cutoff'] == null ? null : (map['cutoff'] as int).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      duration: map['duration'] == null ? null : (map['duration'] as int).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      endDate: map['endDate'] == null ? null : (map['endDate'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      schedule: map['schedule'] == null ? null : (map['schedule'] as String).input(),
      scheduleOffset: map['scheduleOffset'] == null ? null : (map['scheduleOffset'] as int).input(),
      scheduleTimezone: map['scheduleTimezone'] == null ? null : (map['scheduleTimezone'] as String).input(),
      startDate: map['startDate'] == null ? null : (map['startDate'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

