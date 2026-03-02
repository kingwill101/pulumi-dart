// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The backup profile for the SQL server.
class BackupPolicyResponse {
  /// The differential backup interval in hours.
  final pulumi.Input<int>? differentialBackupHours;
  /// The value indicating days between full backups.
  final pulumi.Input<int>? fullBackupDays;
  /// The retention period for all the databases in this managed instance.
  final pulumi.Input<int>? retentionPeriodDays;
  /// The value indicating minutes between transaction log backups.
  final pulumi.Input<int>? transactionLogBackupMinutes;

  /// Creates a new [BackupPolicyResponse].
  /// [differentialBackupHours] The differential backup interval in hours.
  /// [fullBackupDays] The value indicating days between full backups.
  /// [retentionPeriodDays] The retention period for all the databases in this managed instance.
  /// [transactionLogBackupMinutes] The value indicating minutes between transaction log backups.
  BackupPolicyResponse({
    this.differentialBackupHours,
    this.fullBackupDays,
    this.retentionPeriodDays,
    this.transactionLogBackupMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'differentialBackupHours': ?differentialBackupHours,
      'fullBackupDays': ?fullBackupDays,
      'retentionPeriodDays': ?retentionPeriodDays,
      'transactionLogBackupMinutes': ?transactionLogBackupMinutes,
    };
  }

  factory BackupPolicyResponse.fromMap(Map<String, dynamic> map) {
    return BackupPolicyResponse(
      differentialBackupHours: map['differentialBackupHours'] == null ? null : (map['differentialBackupHours'] as int).input(),
      fullBackupDays: map['fullBackupDays'] == null ? null : (map['fullBackupDays'] as int).input(),
      retentionPeriodDays: map['retentionPeriodDays'] == null ? null : (map['retentionPeriodDays'] as int).input(),
      transactionLogBackupMinutes: map['transactionLogBackupMinutes'] == null ? null : (map['transactionLogBackupMinutes'] as int).input(),
    );
  }
}

