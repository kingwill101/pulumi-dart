// ignore_for_file: unused_element, unnecessary_cast


/// The object representing the state of the migration between the backup policies.
class BackupPolicyMigrationStateResponse {
  /// Time at which the backup policy migration started (ISO-8601 format).
  final String? startTime;
  /// Describes the status of migration between backup policy types.
  final String? status;
  /// Describes the target backup policy type of the backup policy migration.
  final String? targetType;

  /// Creates a new [BackupPolicyMigrationStateResponse].
  /// [startTime] Time at which the backup policy migration started (ISO-8601 format).
  /// [status] Describes the status of migration between backup policy types.
  /// [targetType] Describes the target backup policy type of the backup policy migration.
  BackupPolicyMigrationStateResponse({
    this.startTime,
    this.status,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTime': ?startTime,
      'status': ?status,
      'targetType': ?targetType,
    };
  }

  factory BackupPolicyMigrationStateResponse.fromMap(Map<String, dynamic> map) {
    return BackupPolicyMigrationStateResponse(
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      targetType: map['targetType'] == null ? null : map['targetType'] as String,
    );
  }
}

