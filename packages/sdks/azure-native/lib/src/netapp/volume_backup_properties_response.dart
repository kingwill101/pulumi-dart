// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Volume Backup Properties
class VolumeBackupPropertiesResponse {
  /// Backup Policy Resource ID
  final pulumi.Input<String>? backupPolicyId;
  /// Backup Vault Resource ID
  final pulumi.Input<String>? backupVaultId;
  /// Policy Enforced
  final pulumi.Input<bool>? policyEnforced;

  /// Creates a new [VolumeBackupPropertiesResponse].
  /// [backupPolicyId] Backup Policy Resource ID
  /// [backupVaultId] Backup Vault Resource ID
  /// [policyEnforced] Policy Enforced
  VolumeBackupPropertiesResponse({
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

  factory VolumeBackupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VolumeBackupPropertiesResponse(
      backupPolicyId: map['backupPolicyId'] == null ? null : (map['backupPolicyId']! as String).input(),
      backupVaultId: map['backupVaultId'] == null ? null : (map['backupVaultId']! as String).input(),
      policyEnforced: map['policyEnforced'] == null ? null : (map['policyEnforced']! as bool).input(),
    );
  }
}

