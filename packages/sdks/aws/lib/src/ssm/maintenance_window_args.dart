// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssm_maintenance_window_maintenance_window_args_doc}
/// The set of arguments for MaintenanceWindow.
/// {@endtemplate}
/// {@macro pulumi_ssm_maintenance_window_maintenance_window_args_doc}
class MaintenanceWindowArgs {
  /// Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.
  final pulumi.Input<bool>? allowUnassociatedTargets;
  /// The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.
  final pulumi.Input<int> cutoff;
  /// A description for the maintenance window.
  final pulumi.Input<String>? description;
  /// The duration of the Maintenance Window in hours.
  final pulumi.Input<int> duration;
  /// Whether the maintenance window is enabled. Default: `true`.
  final pulumi.Input<bool>? enabled;
  /// Timestamp in [ISO-8601 extended format](https://www.iso.org/iso-8601-date-and-time-format.html) when to no longer run the maintenance window.
  final pulumi.Input<String>? endDate;
  /// The name of the maintenance window.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The schedule of the Maintenance Window in the form of a [cron or rate expression](https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html).
  final pulumi.Input<String> schedule;
  /// The number of days to wait after the date and time specified by a CRON expression before running the maintenance window. Valid range is `1` to `6`.
  final pulumi.Input<int>? scheduleOffset;
  /// Timezone for schedule in [Internet Assigned Numbers Authority (IANA) Time Zone Database format](https://www.iana.org/time-zones). For example: `America/Los_Angeles`, `etc/UTC`, or `Asia/Seoul`.
  final pulumi.Input<String>? scheduleTimezone;
  /// Timestamp in [ISO-8601 extended format](https://www.iso.org/iso-8601-date-and-time-format.html) when to begin the maintenance window.
  final pulumi.Input<String>? startDate;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MaintenanceWindowArgs].
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
  MaintenanceWindowArgs({
    this.allowUnassociatedTargets,
    required this.cutoff,
    this.description,
    required this.duration,
    this.enabled,
    this.endDate,
    this.name,
    this.region,
    required this.schedule,
    this.scheduleOffset,
    this.scheduleTimezone,
    this.startDate,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowUnassociatedTargets': ?allowUnassociatedTargets,
      'cutoff': cutoff,
      'description': ?description,
      'duration': duration,
      'enabled': ?enabled,
      'endDate': ?endDate,
      'name': ?name,
      'region': ?region,
      'schedule': schedule,
      'scheduleOffset': ?scheduleOffset,
      'scheduleTimezone': ?scheduleTimezone,
      'startDate': ?startDate,
      'tags': ?tags,
    };
  }

  factory MaintenanceWindowArgs.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowArgs(
      allowUnassociatedTargets: map['allowUnassociatedTargets'] == null ? null : ((map['allowUnassociatedTargets'] as bool).input()).input(),
      cutoff: (map['cutoff'] as int).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      duration: (map['duration'] as int).input(),
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      endDate: map['endDate'] == null ? null : ((map['endDate'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      schedule: (map['schedule'] as String).input(),
      scheduleOffset: map['scheduleOffset'] == null ? null : ((map['scheduleOffset'] as int).input()).input(),
      scheduleTimezone: map['scheduleTimezone'] == null ? null : ((map['scheduleTimezone'] as String).input()).input(),
      startDate: map['startDate'] == null ? null : ((map['startDate'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

