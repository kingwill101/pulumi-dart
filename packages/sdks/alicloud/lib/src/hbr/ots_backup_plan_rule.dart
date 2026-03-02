// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OtsBackupPlanRule {
  /// Backup type. Valid values: `COMPLETE`.
  final pulumi.Input<String>? backupType;
  /// Whether to disable the backup task. Valid values: `true`, `false`. Default values: `false`.
  final pulumi.Input<bool>? disabled;
  /// Backup retention days, the minimum is 1.
  final pulumi.Input<String>? retention;
  /// The name of the backup rule.**Note:** Required while source_type equals `OTS_TABLE`. `rule_name` should be unique for the specific user.
  final pulumi.Input<String>? ruleName;
  /// Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// - `startTime` Backup start time, UNIX time seconds.
  final pulumi.Input<String>? schedule;

  /// Creates a new [OtsBackupPlanRule].
  /// [backupType] Backup type. Valid values: `COMPLETE`.
  /// [disabled] Whether to disable the backup task. Valid values: `true`, `false`. Default values: `false`.
  /// [retention] Backup retention days, the minimum is 1.
  /// [ruleName] The name of the backup rule.**Note:** Required while source_type equals `OTS_TABLE`. `rule_name` should be unique for the specific user.
  /// [schedule] Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  OtsBackupPlanRule({
    this.backupType,
    this.disabled,
    this.retention,
    this.ruleName,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': ?backupType,
      'disabled': ?disabled,
      'retention': ?retention,
      'ruleName': ?ruleName,
      'schedule': ?schedule,
    };
  }

  factory OtsBackupPlanRule.fromMap(Map<String, dynamic> map) {
    return OtsBackupPlanRule(
      backupType: map['backupType'] == null ? null : (map['backupType'] as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      retention: map['retention'] == null ? null : (map['retention'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
      schedule: map['schedule'] == null ? null : (map['schedule'] as String).input(),
    );
  }
}

