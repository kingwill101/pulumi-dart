// ignore_for_file: unused_element, unnecessary_cast

class BackupScheduleSpecCronSpec {
  /// Textual representation of the crontab. User can customize the
  /// backup frequency and the backup version time using the cron
  /// expression. The version time must be in UTC timzeone.
  /// The backup will contain an externally consistent copy of the
  /// database at the version time. Allowed frequencies are 12 hour, 1 day,
  /// 1 week and 1 month. Examples of valid cron specifications:
  /// 0 2/12 * * * : every 12 hours at (2, 14) hours past midnight in UTC.
  /// 0 2,14 * * * : every 12 hours at (2,14) hours past midnight in UTC.
  /// 0 2 * * *    : once a day at 2 past midnight in UTC.
  /// 0 2 * * 0    : once a week every Sunday at 2 past midnight in UTC.
  /// 0 2 8 * *    : once a month on 8th day at 2 past midnight in UTC.
  final String? text;

  BackupScheduleSpecCronSpec({
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory BackupScheduleSpecCronSpec.fromMap(Map<String, dynamic> map) {
    return BackupScheduleSpecCronSpec(
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
