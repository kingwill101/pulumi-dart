// ignore_for_file: unused_element, unnecessary_cast


/// Volume Backup Properties
class VolumeBackupProperties {
  /// Backup Policy Resource ID
  final String? backupPolicyId;
  /// Backup Vault Resource ID
  final String? backupVaultId;
  /// Policy Enforced
  final bool? policyEnforced;

  /// Creates a new [VolumeBackupProperties].
  /// [backupPolicyId] Backup Policy Resource ID
  /// [backupVaultId] Backup Vault Resource ID
  /// [policyEnforced] Policy Enforced
  VolumeBackupProperties({
    this.backupPolicyId,
    this.backupVaultId,
    this.policyEnforced,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': ?backupPolicyId,
      'backupVaultId': ?backupVaultId,
      'policyEnforced': ?policyEnforced,
    };
  }

  factory VolumeBackupProperties.fromMap(Map<String, dynamic> map) {
    return VolumeBackupProperties(
      backupPolicyId: map['backupPolicyId'] == null ? null : map['backupPolicyId'] as String,
      backupVaultId: map['backupVaultId'] == null ? null : map['backupVaultId'] as String,
      policyEnforced: map['policyEnforced'] == null ? null : map['policyEnforced'] as bool,
    );
  }
}

