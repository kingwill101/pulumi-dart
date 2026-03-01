// ignore_for_file: unused_element, unnecessary_cast

import 'backup_policy_migration_state_response.dart';
import 'periodic_mode_properties_response.dart';

/// The object representing periodic mode backup policy.
class PeriodicModeBackupPolicyResponse {
  /// The object representing the state of the migration between the backup policies.
  final BackupPolicyMigrationStateResponse? migrationState;
  /// Configuration values for periodic mode backup
  final PeriodicModePropertiesResponse? periodicModeProperties;
  /// Describes the mode of backups.
  /// Expected value is 'Periodic'.
  final String type;

  /// Creates a new [PeriodicModeBackupPolicyResponse].
  /// [migrationState] The object representing the state of the migration between the backup policies.
  /// [periodicModeProperties] Configuration values for periodic mode backup
  /// [type] Describes the mode of backups.
  PeriodicModeBackupPolicyResponse({
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

  factory PeriodicModeBackupPolicyResponse.fromMap(Map<String, dynamic> map) {
    return PeriodicModeBackupPolicyResponse(
      migrationState: map['migrationState'] == null ? null : BackupPolicyMigrationStateResponse.fromMap((map['migrationState'] as Map).cast<String, dynamic>()),
      periodicModeProperties: map['periodicModeProperties'] == null ? null : PeriodicModePropertiesResponse.fromMap((map['periodicModeProperties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

