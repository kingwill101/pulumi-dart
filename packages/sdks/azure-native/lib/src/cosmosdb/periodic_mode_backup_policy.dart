// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_migration_state.dart';
import 'periodic_mode_properties.dart';

/// The object representing periodic mode backup policy.
class PeriodicModeBackupPolicy {
  /// The object representing the state of the migration between the backup policies.
  final pulumi.Input<BackupPolicyMigrationState>? migrationState;
  /// Configuration values for periodic mode backup
  final pulumi.Input<PeriodicModeProperties>? periodicModeProperties;
  /// Describes the mode of backups.
  /// Expected value is 'Periodic'.
  final pulumi.Input<String> type;

  /// Creates a new [PeriodicModeBackupPolicy].
  /// [migrationState] The object representing the state of the migration between the backup policies.
  /// [periodicModeProperties] Configuration values for periodic mode backup
  /// [type] Describes the mode of backups.
  PeriodicModeBackupPolicy({
    this.migrationState,
    this.periodicModeProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationState': ?pulumi.Input.mapOptionalInputValue<BackupPolicyMigrationState, Map<String, dynamic>>(migrationState, (value) => value.toMap()),
      'periodicModeProperties': ?pulumi.Input.mapOptionalInputValue<PeriodicModeProperties, Map<String, dynamic>>(periodicModeProperties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PeriodicModeBackupPolicy.fromMap(Map<String, dynamic> map) {
    return PeriodicModeBackupPolicy(
      migrationState: map['migrationState'] == null ? null : (BackupPolicyMigrationState.fromMap((map['migrationState']! as Map).cast<String, dynamic>())).input(),
      periodicModeProperties: map['periodicModeProperties'] == null ? null : (PeriodicModeProperties.fromMap((map['periodicModeProperties']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

