// ignore_for_file: unused_element, unnecessary_cast


class GetVolumeDataProtectionBackupPolicy {
  /// The Resource ID of the backup policy.
  final String backupPolicyId;
  /// The Resource ID of the backup backup vault.
  final String backupVaultId;
  /// Backup policy is enabled or not.
  final bool policyEnabled;

  /// Creates a new [GetVolumeDataProtectionBackupPolicy].
  /// [backupPolicyId] The Resource ID of the backup policy.
  /// [backupVaultId] The Resource ID of the backup backup vault.
  /// [policyEnabled] Backup policy is enabled or not.
  GetVolumeDataProtectionBackupPolicy({
    required this.backupPolicyId,
    required this.backupVaultId,
    required this.policyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': backupPolicyId,
      'backupVaultId': backupVaultId,
      'policyEnabled': policyEnabled,
    };
  }

  factory GetVolumeDataProtectionBackupPolicy.fromMap(Map<String, dynamic> map) {
    return GetVolumeDataProtectionBackupPolicy(
      backupPolicyId: map['backupPolicyId'] as String,
      backupVaultId: map['backupVaultId'] as String,
      policyEnabled: map['policyEnabled'] as bool,
    );
  }
}

