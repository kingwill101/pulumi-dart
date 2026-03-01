// ignore_for_file: unused_element, unnecessary_cast


class GetBackupPoliciesPolicy {
  /// Data backup days. Valid values: `7` to `730`.
  final int backupRetentionPeriod;
  /// The db cluster id.
  final String dbClusterId;
  /// The ID of the Backup Policy.
  final String id;
  /// DBCluster Backup period.
  final List<String> preferredBackupPeriods;
  /// Backup Time, UTC time.
  final String preferredBackupTime;
  /// The status of the resource.
  final String status;

  /// Creates a new [GetBackupPoliciesPolicy].
  /// [backupRetentionPeriod] Data backup days. Valid values: `7` to `730`.
  /// [dbClusterId] The db cluster id.
  /// [id] The ID of the Backup Policy.
  /// [preferredBackupPeriods] DBCluster Backup period.
  /// [preferredBackupTime] Backup Time, UTC time.
  /// [status] The status of the resource.
  GetBackupPoliciesPolicy({
    required this.backupRetentionPeriod,
    required this.dbClusterId,
    required this.id,
    required this.preferredBackupPeriods,
    required this.preferredBackupTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionPeriod': backupRetentionPeriod,
      'dbClusterId': dbClusterId,
      'id': id,
      'preferredBackupPeriods': preferredBackupPeriods,
      'preferredBackupTime': preferredBackupTime,
      'status': status,
    };
  }

  factory GetBackupPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetBackupPoliciesPolicy(
      backupRetentionPeriod: map['backupRetentionPeriod'] as int,
      dbClusterId: map['dbClusterId'] as String,
      id: map['id'] as String,
      preferredBackupPeriods: (map['preferredBackupPeriods'] as List).cast<String>(),
      preferredBackupTime: map['preferredBackupTime'] as String,
      status: map['status'] as String,
    );
  }
}

