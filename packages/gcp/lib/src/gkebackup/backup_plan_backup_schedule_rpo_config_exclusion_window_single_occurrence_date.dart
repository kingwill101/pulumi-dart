// ignore_for_file: unused_element, unnecessary_cast


class BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate {
  /// Day of a month.
  final int? day;
  /// Month of a year.
  final int? month;
  /// Year of the date.
  final int? year;

  /// Creates a new [BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate].
  /// [day] Day of a month.
  /// [month] Month of a year.
  /// [year] Year of the date.
  BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate({
    this.day,
    this.month,
    this.year,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'month': ?month,
      'year': ?year,
    };
  }

  factory BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate(
      day: map['day'] == null ? null : map['day'] as int,
      month: map['month'] == null ? null : map['month'] as int,
      year: map['year'] == null ? null : map['year'] as int,
    );
  }
}

