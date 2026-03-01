// ignore_for_file: unused_element, unnecessary_cast


class BackupPolicyDiskRetentionRuleCriteria {
  /// Possible values are `AllBackup`, `FirstOfDay`, `FirstOfWeek`, `FirstOfMonth` and `FirstOfYear`. These values mean the first successful backup of the day/week/month/year. Changing this forces a new Backup Policy Disk to be created.
  final String? absoluteCriteria;

  /// Creates a new [BackupPolicyDiskRetentionRuleCriteria].
  /// [absoluteCriteria] Possible values are `AllBackup`, `FirstOfDay`, `FirstOfWeek`, `FirstOfMonth` and `FirstOfYear`. These values mean the first successful backup of the day/week/month/year. Changing this forces a new Backup Policy Disk to be created.
  BackupPolicyDiskRetentionRuleCriteria({
    this.absoluteCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absoluteCriteria': ?absoluteCriteria,
    };
  }

  factory BackupPolicyDiskRetentionRuleCriteria.fromMap(Map<String, dynamic> map) {
    return BackupPolicyDiskRetentionRuleCriteria(
      absoluteCriteria: map['absoluteCriteria'] == null ? null : map['absoluteCriteria'] as String,
    );
  }
}

