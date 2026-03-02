// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_migration_state_response.dart';
import 'continuous_mode_properties_response.dart';

/// The object representing continuous mode backup policy.
class ContinuousModeBackupPolicyResponse {
  /// Configuration values for continuous mode backup
  final pulumi.Input<ContinuousModePropertiesResponse>? continuousModeProperties;
  /// The object representing the state of the migration between the backup policies.
  final pulumi.Input<BackupPolicyMigrationStateResponse>? migrationState;
  /// Describes the mode of backups.
  /// Expected value is 'Continuous'.
  final pulumi.Input<String> type;

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
      'continuousModeProperties': ?pulumi.Input.mapOptionalInputValue<ContinuousModePropertiesResponse, Map<String, dynamic>>(continuousModeProperties, (value) => value.toMap()),
      'migrationState': ?pulumi.Input.mapOptionalInputValue<BackupPolicyMigrationStateResponse, Map<String, dynamic>>(migrationState, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ContinuousModeBackupPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ContinuousModeBackupPolicyResponse(
      continuousModeProperties: map['continuousModeProperties'] == null ? null : (ContinuousModePropertiesResponse.fromMap((map['continuousModeProperties']! as Map).cast<String, dynamic>())).input(),
      migrationState: map['migrationState'] == null ? null : (BackupPolicyMigrationStateResponse.fromMap((map['migrationState']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

