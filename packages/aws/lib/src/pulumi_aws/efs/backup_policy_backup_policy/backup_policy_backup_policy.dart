// ignore_for_file: unused_element, unnecessary_cast

class BackupPolicyBackupPolicy {
  /// A status of the backup policy. Valid values: `ENABLED`, `DISABLED`.
  final String status;

  BackupPolicyBackupPolicy({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

  factory BackupPolicyBackupPolicy.fromMap(Map<String, dynamic> map) {
    return BackupPolicyBackupPolicy(
      status: map['status'] as String,
    );
  }
}
