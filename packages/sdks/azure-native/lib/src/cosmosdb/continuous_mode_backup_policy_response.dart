// ignore_for_file: unused_element, unnecessary_cast

import 'backup_policy_migration_state_response.dart';
import 'continuous_mode_properties_response.dart';

/// The object representing continuous mode backup policy.
class ContinuousModeBackupPolicyResponse {
  /// Configuration values for continuous mode backup
  final ContinuousModePropertiesResponse? continuousModeProperties;
  /// The object representing the state of the migration between the backup policies.
  final BackupPolicyMigrationStateResponse? migrationState;
  /// Describes the mode of backups.
  /// Expected value is 'Continuous'.
  final String type;

  /// Creates a new [ContinuousModeBackupPolicyResponse].
  /// [continuousModeProperties] Configuration values for continuous mode backup
  /// [migrationState] The object representing the state of the migration between the backup policies.
  /// [type] Describes the mode of backups.
  ContinuousModeBackupPolicyResponse({
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

  factory ContinuousModeBackupPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ContinuousModeBackupPolicyResponse(
      continuousModeProperties: map['continuousModeProperties'] == null ? null : ContinuousModePropertiesResponse.fromMap((map['continuousModeProperties'] as Map).cast<String, dynamic>()),
      migrationState: map['migrationState'] == null ? null : BackupPolicyMigrationStateResponse.fromMap((map['migrationState'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

