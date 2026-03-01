// ignore_for_file: unused_element, unnecessary_cast

import 'dbbackup_policy_properties.dart';
import 'existing_recovery_services_vault.dart';

/// Defines the SQL Backup data for a virtual instance for SAP.
class SqlBackupData {
  /// Defines the policy properties for database backup.
  final DBBackupPolicyProperties backupPolicy;
  /// The type of backup, VM, SQL or HANA.
  /// Expected value is 'SQL'.
  final String backupType;
  /// The properties of the recovery services vault used for backup.
  final ExistingRecoveryServicesVault recoveryServicesVault;

  /// Creates a new [SqlBackupData].
  /// [backupPolicy] Defines the policy properties for database backup.
  /// [backupType] The type of backup, VM, SQL or HANA.
  /// [recoveryServicesVault] The properties of the recovery services vault used for backup.
  SqlBackupData({
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

  factory SqlBackupData.fromMap(Map<String, dynamic> map) {
    return SqlBackupData(
      backupPolicy: DBBackupPolicyProperties.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>()),
      backupType: map['backupType'] as String,
      recoveryServicesVault: ExistingRecoveryServicesVault.fromMap((map['recoveryServicesVault'] as Map).cast<String, dynamic>()),
    );
  }
}

