// ignore_for_file: unused_element, unnecessary_cast

import 'backup_policy_migration_state.dart';
import 'periodic_mode_properties.dart';

/// The object representing periodic mode backup policy.
class PeriodicModeBackupPolicy {
  /// The object representing the state of the migration between the backup policies.
  final BackupPolicyMigrationState? migrationState;
  /// Configuration values for periodic mode backup
  final PeriodicModeProperties? periodicModeProperties;
  /// Describes the mode of backups.
  /// Expected value is 'Periodic'.
  final String type;

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
      'migrationState': ?migrationState == null ? null : migrationState!.toMap(),
      'periodicModeProperties': ?periodicModeProperties == null ? null : periodicModeProperties!.toMap(),
      'type': type,
    };
  }

  factory PeriodicModeBackupPolicy.fromMap(Map<String, dynamic> map) {
    return PeriodicModeBackupPolicy(
      migrationState: map['migrationState'] == null ? null : BackupPolicyMigrationState.fromMap((map['migrationState'] as Map).cast<String, dynamic>()),
      periodicModeProperties: map['periodicModeProperties'] == null ? null : PeriodicModeProperties.fromMap((map['periodicModeProperties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

