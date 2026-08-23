// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule for backup
class BackupSchedule {
  /// Repeating time intervals that define the backup schedule.
  ///
  /// Each value must follow the format: `R/YYYY-MM-DDThh:mm:ss[.fff][Z|(+/-)hh:mm]/Duration`
  ///
  /// Only the exact formats listed below are supported. Other ISO 8601 variations are not accepted.
  ///
  /// Supported time formats:
  /// - `Thh:mm:ss.fff` (with milliseconds)
  /// - `Thh:mm:ss` (with seconds)
  /// - `Thh:mm` (hours and minutes only)
  ///
  /// A timezone indicator (`Z`, `+hh:mm`, or `-hh:mm`) may be appended to any of the above.
  ///
  /// Unsupported formats include compact notation such as `T1430`, `T143045`, or `T14.5`.
  ///
  /// Examples:
  /// - `R/2023-10-15T14:30:00Z/P1W`
  /// - `R/2023-10-15T14:30:45.123+05:30/P1D`
  /// - `R/2023-10-15T14:30Z/P1D`
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

  /// Creates a new [BackupSchedule].
  /// [repeatingTimeIntervals] Repeating time intervals that define the backup schedule.
  /// [timeZone] Time Zone for a schedule.
  const BackupSchedule({
    required this.repeatingTimeIntervals,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repeatingTimeIntervals': repeatingTimeIntervals,
      'timeZone': ?timeZone,
    };
  }

  factory BackupSchedule.fromMap(Map<String, dynamic> map) {
    return BackupSchedule(
      repeatingTimeIntervals: pulumi.Input.fromValue((map['repeatingTimeIntervals'] as List).cast<String>()),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
