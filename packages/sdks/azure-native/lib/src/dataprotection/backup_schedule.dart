// ignore_for_file: unused_element, unnecessary_cast


/// Schedule for backup
class BackupSchedule {
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
  final List<String> repeatingTimeIntervals;
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
  final String? timeZone;

  /// Creates a new [BackupSchedule].
  /// [repeatingTimeIntervals] Repeating time interval which supports the ISO 8601 format and unsupported or partially supported formats.
  /// [timeZone] Time Zone for a schedule.
  BackupSchedule({
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
      repeatingTimeIntervals: (map['repeatingTimeIntervals'] as List).cast<String>(),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

