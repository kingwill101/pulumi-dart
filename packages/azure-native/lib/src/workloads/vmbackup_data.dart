// ignore_for_file: unused_element, unnecessary_cast

import 'disk_exclusion_properties.dart';
import 'existing_recovery_services_vault.dart';
import 'vmbackup_policy_properties.dart';

/// Defines the VM Backup data for a virtual instance for SAP.
class VMBackupData {
  /// Defines the policy properties for virtual machine backup.
  final VMBackupPolicyProperties backupPolicy;
  /// The type of backup, VM, SQL or HANA.
  /// Expected value is 'VM'.
  final String backupType;
  /// Defines the disk exclusion properties for virtual machine backup.
  final DiskExclusionProperties? diskExclusionProperties;
  /// The properties of the recovery services vault used for backup.
  final ExistingRecoveryServicesVault recoveryServicesVault;

  /// Creates a new [VMBackupData].
  /// [backupPolicy] Defines the policy properties for virtual machine backup.
  /// [backupType] The type of backup, VM, SQL or HANA.
  /// [diskExclusionProperties] Defines the disk exclusion properties for virtual machine backup.
  /// [recoveryServicesVault] The properties of the recovery services vault used for backup.
  VMBackupData({
    required this.backupPolicy,
    required this.backupType,
    this.diskExclusionProperties,
    required this.recoveryServicesVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicy': backupPolicy.toMap(),
      'backupType': backupType,
      'diskExclusionProperties': ?diskExclusionProperties == null ? null : diskExclusionProperties!.toMap(),
      'recoveryServicesVault': recoveryServicesVault.toMap(),
    };
  }

  factory VMBackupData.fromMap(Map<String, dynamic> map) {
    return VMBackupData(
      backupPolicy: VMBackupPolicyProperties.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>()),
      backupType: map['backupType'] as String,
      diskExclusionProperties: map['diskExclusionProperties'] == null ? null : DiskExclusionProperties.fromMap((map['diskExclusionProperties'] as Map).cast<String, dynamic>()),
      recoveryServicesVault: ExistingRecoveryServicesVault.fromMap((map['recoveryServicesVault'] as Map).cast<String, dynamic>()),
    );
  }
}

