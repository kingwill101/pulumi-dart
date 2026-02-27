// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MaintenanceWindow.
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
    final map = <String, dynamic>{};
    final allowUnassociatedTargetsValue = allowUnassociatedTargets;
    if (allowUnassociatedTargetsValue != null) {
      map['allowUnassociatedTargets'] = allowUnassociatedTargetsValue;
    }
    map['cutoff'] = cutoff;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['duration'] = duration;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final endDateValue = endDate;
    if (endDateValue != null) {
      map['endDate'] = endDateValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['schedule'] = schedule;
    final scheduleOffsetValue = scheduleOffset;
    if (scheduleOffsetValue != null) {
      map['scheduleOffset'] = scheduleOffsetValue;
    }
    final scheduleTimezoneValue = scheduleTimezone;
    if (scheduleTimezoneValue != null) {
      map['scheduleTimezone'] = scheduleTimezoneValue;
    }
    final startDateValue = startDate;
    if (startDateValue != null) {
      map['startDate'] = startDateValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory MaintenanceWindowArgs.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowArgs(
      allowUnassociatedTargets:
          pulumi.Input.asOptionalInput<bool>(map['allowUnassociatedTargets']),
      cutoff: pulumi.Input.asInput<int>(map['cutoff']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      duration: pulumi.Input.asInput<int>(map['duration']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      endDate: pulumi.Input.asOptionalInput<String>(map['endDate']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      schedule: pulumi.Input.asInput<String>(map['schedule']),
      scheduleOffset: pulumi.Input.asOptionalInput<int>(map['scheduleOffset']),
      scheduleTimezone:
          pulumi.Input.asOptionalInput<String>(map['scheduleTimezone']),
      startDate: pulumi.Input.asOptionalInput<String>(map['startDate']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
