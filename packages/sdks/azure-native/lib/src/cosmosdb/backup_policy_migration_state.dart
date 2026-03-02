// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The object representing the state of the migration between the backup policies.
class BackupPolicyMigrationState {
  /// Time at which the backup policy migration started (ISO-8601 format).
  final pulumi.Input<String>? startTime;
  /// Describes the status of migration between backup policy types.
  final pulumi.Input<String>? status;
  /// Describes the target backup policy type of the backup policy migration.
  final pulumi.Input<String>? targetType;

  /// Creates a new [BackupPolicyMigrationState].
  /// [startTime] Time at which the backup policy migration started (ISO-8601 format).
  /// [status] Describes the status of migration between backup policy types.
  /// [targetType] Describes the target backup policy type of the backup policy migration.
  BackupPolicyMigrationState({
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

  factory BackupPolicyMigrationState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyMigrationState(
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      targetType: map['targetType'] == null ? null : (map['targetType'] as String).input(),
    );
  }
}

