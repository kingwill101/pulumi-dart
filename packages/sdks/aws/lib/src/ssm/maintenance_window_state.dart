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
    pulumi.Output<bool>? allowUnassociatedTargets,
    pulumi.Output<int>? cutoff,
    pulumi.Output<String>? description,
    pulumi.Output<int>? duration,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? endDate,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? schedule,
    pulumi.Output<int>? scheduleOffset,
    pulumi.Output<String>? scheduleTimezone,
    pulumi.Output<String>? startDate,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      allowUnassociatedTargets = pulumi.Input.asOptionalInput<bool>(allowUnassociatedTargets),
      cutoff = pulumi.Input.asOptionalInput<int>(cutoff),
      description = pulumi.Input.asOptionalInput<String>(description),
      duration = pulumi.Input.asOptionalInput<int>(duration),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      endDate = pulumi.Input.asOptionalInput<String>(endDate),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      schedule = pulumi.Input.asOptionalInput<String>(schedule),
      scheduleOffset = pulumi.Input.asOptionalInput<int>(scheduleOffset),
      scheduleTimezone = pulumi.Input.asOptionalInput<String>(scheduleTimezone),
      startDate = pulumi.Input.asOptionalInput<String>(startDate),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      allowUnassociatedTargets: map['allowUnassociatedTargets'] == null ? null : pulumi.Output.create<bool>(map['allowUnassociatedTargets'] as bool),
      cutoff: map['cutoff'] == null ? null : pulumi.Output.create<int>(map['cutoff'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<int>(map['duration'] as int),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      endDate: map['endDate'] == null ? null : pulumi.Output.create<String>(map['endDate'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<String>(map['schedule'] as String),
      scheduleOffset: map['scheduleOffset'] == null ? null : pulumi.Output.create<int>(map['scheduleOffset'] as int),
      scheduleTimezone: map['scheduleTimezone'] == null ? null : pulumi.Output.create<String>(map['scheduleTimezone'] as String),
      startDate: map['startDate'] == null ? null : pulumi.Output.create<String>(map['startDate'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

