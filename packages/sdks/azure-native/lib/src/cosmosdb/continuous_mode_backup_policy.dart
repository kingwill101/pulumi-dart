// ignore_for_file: unused_element, unnecessary_cast

import 'backup_policy_migration_state.dart';
import 'continuous_mode_properties.dart';

/// The object representing continuous mode backup policy.
class ContinuousModeBackupPolicy {
  /// Configuration values for continuous mode backup
  final ContinuousModeProperties? continuousModeProperties;
  /// The object representing the state of the migration between the backup policies.
  final BackupPolicyMigrationState? migrationState;
  /// Describes the mode of backups.
  /// Expected value is 'Continuous'.
  final String type;

  /// Creates a new [ContinuousModeBackupPolicy].
  /// [continuousModeProperties] Configuration values for continuous mode backup
  /// [migrationState] The object representing the state of the migration between the backup policies.
  /// [type] Describes the mode of backups.
  ContinuousModeBackupPolicy({
    this.continuousModeProperties,
    this.migrationState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continuousModeProperties': ?continuousModeProperties == null ? null : continuousModeProperties!.toMap(),
      'migrationState': ?migrationState == null ? null : migrationState!.toMap(),
      'type': type,
    };
  }

  factory ContinuousModeBackupPolicy.fromMap(Map<String, dynamic> map) {
    return ContinuousModeBackupPolicy(
      continuousModeProperties: map['continuousModeProperties'] == null ? null : ContinuousModeProperties.fromMap((map['continuousModeProperties'] as Map).cast<String, dynamic>()),
      migrationState: map['migrationState'] == null ? null : BackupPolicyMigrationState.fromMap((map['migrationState'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

