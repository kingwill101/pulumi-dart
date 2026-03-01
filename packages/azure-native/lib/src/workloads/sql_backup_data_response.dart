// ignore_for_file: unused_element, unnecessary_cast

import 'dbbackup_policy_properties_response.dart';
import 'existing_recovery_services_vault_response.dart';

/// Defines the SQL Backup data for a virtual instance for SAP.
class SqlBackupDataResponse {
  /// Defines the policy properties for database backup.
  final DBBackupPolicyPropertiesResponse backupPolicy;
  /// The type of backup, VM, SQL or HANA.
  /// Expected value is 'SQL'.
  final String backupType;
  /// The properties of the recovery services vault used for backup.
  final ExistingRecoveryServicesVaultResponse recoveryServicesVault;

  /// Creates a new [SqlBackupDataResponse].
  /// [backupPolicy] Defines the policy properties for database backup.
  /// [backupType] The type of backup, VM, SQL or HANA.
  /// [recoveryServicesVault] The properties of the recovery services vault used for backup.
  SqlBackupDataResponse({
    required this.backupPolicy,
    required this.backupType,
    required this.recoveryServicesVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicy': backupPolicy.toMap(),
      'backupType': backupType,
      'recoveryServicesVault': recoveryServicesVault.toMap(),
    };
  }

  factory SqlBackupDataResponse.fromMap(Map<String, dynamic> map) {
    return SqlBackupDataResponse(
      backupPolicy: DBBackupPolicyPropertiesResponse.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>()),
      backupType: map['backupType'] as String,
      recoveryServicesVault: ExistingRecoveryServicesVaultResponse.fromMap((map['recoveryServicesVault'] as Map).cast<String, dynamic>()),
    );
  }
}

