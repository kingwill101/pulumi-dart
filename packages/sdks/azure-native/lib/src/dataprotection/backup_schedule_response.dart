// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule for backup
class BackupScheduleResponse {
  /// Repeating time interval which supports the ISO 8601 format and unsupported or partially supported formats.
  ///
  /// Supported ISO 8601 Time Formats
  ///
  /// The following time formats were verified to be successfully parsed and supported:
  /// - T14:30:45.123 → Thh:mm:ss.sss (with milliseconds)
  /// - T14:30:45 → Thh:mm:ss (standard time format)
  /// - T14:30 → Thh:mm (hour and minute only)
  ///
  /// All of the above may include time zone indicators like 'Z', '+05:30', '-08:00'.
  ///
  /// Examples of supported timestamps:
  /// - 2023-10-15T14:30:45Z
  /// - 2023-10-15T14:30:45.123+05:30
  /// - 2023-10-15T14:30Z
  ///
  /// Unsupported or partially supported formats:
  /// - T143045.123 or T143045 (no colons)
  /// - T14.500 (decimal hours)
  /// - T14 (hour only)
  /// - T14:30.500 (minute fractions)
  /// - T24:00:00 (invalid)
  /// - T23:59:60 (leap second)
  final pulumi.Input<List<String>> repeatingTimeIntervals;
  /// Time Zone for a schedule.
  ///
  /// Supported timezone indicators include:
  /// - 'Z' for UTC
  /// - '+00:00'
  /// - '+05:30'
  /// - '-08:00'
  ///
  /// Examples:
  /// - 2023-10-15T14:30:45Z
  /// - 2023-10-15T14:30:45.123+05:30
  /// - 2023-10-15T14:30-08:00
  final pulumi.Input<String>? timeZone;

  /// Creates a new [BackupScheduleResponse].
  /// [repeatingTimeIntervals] Repeating time interval which supports the ISO 8601 format and unsupported or partially supported formats.
  /// [timeZone] Time Zone for a schedule.
  BackupScheduleResponse({
    required this.repeatingTimeIntervals,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repeatingTimeIntervals': repeatingTimeIntervals,
      'timeZone': ?timeZone,
    };
  }

  factory BackupScheduleResponse.fromMap(Map<String, dynamic> map) {
    return BackupScheduleResponse(
      repeatingTimeIntervals: pulumi.Input.fromValue((map['repeatingTimeIntervals'] as List).cast<String>()),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

