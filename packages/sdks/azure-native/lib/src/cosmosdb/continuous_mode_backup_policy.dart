// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_migration_state.dart';
import 'continuous_mode_properties.dart';

/// The object representing continuous mode backup policy.
class ContinuousModeBackupPolicy {
  /// Configuration values for continuous mode backup
  final pulumi.Input<ContinuousModeProperties?>? continuousModeProperties;
  /// The object representing the state of the migration between the backup policies.
  final pulumi.Input<BackupPolicyMigrationState?>? migrationState;
  /// Describes the mode of backups.
  /// Expected value is 'Continuous'.
  final pulumi.Input<String> type;

  /// Creates a new [ContinuousModeBackupPolicy].
  /// [continuousModeProperties] Configuration values for continuous mode backup
  /// [migrationState] The object representing the state of the migration between the backup policies.
  /// [type] Describes the mode of backups.
  const ContinuousModeBackupPolicy({
    this.continuousModeProperties,
    this.migrationState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continuousModeProperties': ?pulumi.Input.mapOptionalInputValue<ContinuousModeProperties, Map<String, dynamic>>(continuousModeProperties, (value) => value.toMap()),
      'migrationState': ?pulumi.Input.mapOptionalInputValue<BackupPolicyMigrationState, Map<String, dynamic>>(migrationState, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ContinuousModeBackupPolicy.fromMap(Map<String, dynamic> map) {
    return ContinuousModeBackupPolicy(
      continuousModeProperties: (() { final guardedValue = map['continuousModeProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContinuousModeProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      migrationState: (() { final guardedValue = map['migrationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupPolicyMigrationState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
