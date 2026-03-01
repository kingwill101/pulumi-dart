// ignore_for_file: unused_element, unnecessary_cast


class ConfigurationBackupSchedulePolicy {
  /// The schedule policy type of the backup policy. Possible value is `SimpleSchedulePolicy`. Defaults to `SimpleSchedulePolicy`.
  final String? schedulePolicyType;
  /// The schedule run days of the backup policy. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  final List<String>? scheduleRunDays;
  /// The schedule run frequency of the backup policy. Possible values are `Daily` and `Weekly`. Defaults to `Daily`.
  final String? scheduleRunFrequency;
  /// The schedule run times of the backup policy.
  final List<String>? scheduleRunTimes;

  /// Creates a new [ConfigurationBackupSchedulePolicy].
  /// [schedulePolicyType] The schedule policy type of the backup policy. Possible value is `SimpleSchedulePolicy`. Defaults to `SimpleSchedulePolicy`.
  /// [scheduleRunDays] The schedule run days of the backup policy. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  /// [scheduleRunFrequency] The schedule run frequency of the backup policy. Possible values are `Daily` and `Weekly`. Defaults to `Daily`.
  /// [scheduleRunTimes] The schedule run times of the backup policy.
  ConfigurationBackupSchedulePolicy({
    this.schedulePolicyType,
    this.scheduleRunDays,
    this.scheduleRunFrequency,
    this.scheduleRunTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedulePolicyType': ?schedulePolicyType,
      'scheduleRunDays': ?scheduleRunDays,
      'scheduleRunFrequency': ?scheduleRunFrequency,
      'scheduleRunTimes': ?scheduleRunTimes,
    };
  }

  factory ConfigurationBackupSchedulePolicy.fromMap(Map<String, dynamic> map) {
    return ConfigurationBackupSchedulePolicy(
      schedulePolicyType: map['schedulePolicyType'] == null ? null : map['schedulePolicyType'] as String,
      scheduleRunDays: map['scheduleRunDays'] == null ? null : (map['scheduleRunDays'] as List).cast<String>(),
      scheduleRunFrequency: map['scheduleRunFrequency'] == null ? null : map['scheduleRunFrequency'] as String,
      scheduleRunTimes: map['scheduleRunTimes'] == null ? null : (map['scheduleRunTimes'] as List).cast<String>(),
    );
  }
}

