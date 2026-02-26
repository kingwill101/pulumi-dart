// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MaintenanceWindow.
class MaintenanceWindowArgs {
  /// Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.
  final Input<bool>? allowUnassociatedTargets;

  /// The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.
  final Input<int> cutoff;

  /// A description for the maintenance window.
  final Input<String>? description;

  /// The duration of the Maintenance Window in hours.
  final Input<int> duration;

  /// Whether the maintenance window is enabled. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? enabled;

  /// Timestamp in [ISO-8601 extended format](https://www.iso.org/iso-8601-date-and-time-format.html) when to no longer run the maintenance window.
  final Input<String>? endDate;

  /// The name of the maintenance window.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The schedule of the Maintenance Window in the form of a [cron or rate expression](https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html).
  final Input<String> schedule;

  /// The number of days to wait after the date and time specified by a CRON expression before running the maintenance window. Valid range is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`6`" pulumi-lang-dotnet="`6`" pulumi-lang-go="`6`" pulumi-lang-python="`6`" pulumi-lang-yaml="`6`" pulumi-lang-java="`6`">`6`</span>.
  final Input<int>? scheduleOffset;

  /// Timezone for schedule in [Internet Assigned Numbers Authority (IANA) Time Zone Database format](https://www.iana.org/time-zones). For example: `America/Los_Angeles`, `etc/UTC`, or `Asia/Seoul`.
  final Input<String>? scheduleTimezone;

  /// Timestamp in [ISO-8601 extended format](https://www.iso.org/iso-8601-date-and-time-format.html) when to begin the maintenance window.
  final Input<String>? startDate;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
          Input.asOptionalInput<bool>(map['allowUnassociatedTargets']),
      cutoff: Input.asInput<int>(map['cutoff']),
      description: Input.asOptionalInput<String>(map['description']),
      duration: Input.asInput<int>(map['duration']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      endDate: Input.asOptionalInput<String>(map['endDate']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      schedule: Input.asInput<String>(map['schedule']),
      scheduleOffset: Input.asOptionalInput<int>(map['scheduleOffset']),
      scheduleTimezone: Input.asOptionalInput<String>(map['scheduleTimezone']),
      startDate: Input.asOptionalInput<String>(map['startDate']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
