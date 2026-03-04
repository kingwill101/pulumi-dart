// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_migration_state_response.dart';
import 'periodic_mode_properties_response.dart';

/// The object representing periodic mode backup policy.
class PeriodicModeBackupPolicyResponse {
  /// The object representing the state of the migration between the backup policies.
  final pulumi.Input<BackupPolicyMigrationStateResponse>? migrationState;

  /// Configuration values for periodic mode backup
  final pulumi.Input<PeriodicModePropertiesResponse>? periodicModeProperties;

  /// Describes the mode of backups.
  /// Expected value is 'Periodic'.
  final pulumi.Input<String> type;

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
      'migrationState':
          ?pulumi.Input.mapOptionalInputValue<
            BackupPolicyMigrationStateResponse,
            Map<String, dynamic>
          >(migrationState, (value) => value.toMap()),
      'periodicModeProperties':
          ?pulumi.Input.mapOptionalInputValue<
            PeriodicModePropertiesResponse,
            Map<String, dynamic>
          >(periodicModeProperties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PeriodicModeBackupPolicyResponse.fromMap(Map<String, dynamic> map) {
    return PeriodicModeBackupPolicyResponse(
      migrationState: (() {
        final guardedValue = map['migrationState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackupPolicyMigrationStateResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      periodicModeProperties: (() {
        final guardedValue = map['periodicModeProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PeriodicModePropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
