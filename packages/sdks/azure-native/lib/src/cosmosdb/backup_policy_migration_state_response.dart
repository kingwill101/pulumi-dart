// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The object representing the state of the migration between the backup policies.
class BackupPolicyMigrationStateResponse {
  /// Time at which the backup policy migration started (ISO-8601 format).
  final pulumi.Input<String>? startTime;
  /// Describes the status of migration between backup policy types.
  final pulumi.Input<String>? status;
  /// Describes the target backup policy type of the backup policy migration.
  final pulumi.Input<String>? targetType;

  /// Creates a new [BackupPolicyMigrationStateResponse].
  /// [startTime] Time at which the backup policy migration started (ISO-8601 format).
  /// [status] Describes the status of migration between backup policy types.
  /// [targetType] Describes the target backup policy type of the backup policy migration.
  const BackupPolicyMigrationStateResponse({
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
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
