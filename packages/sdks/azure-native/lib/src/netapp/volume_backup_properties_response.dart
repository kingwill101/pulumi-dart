// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Volume Backup Properties
class VolumeBackupPropertiesResponse {
  /// Backup Policy Resource ID
  final pulumi.Input<String?>? backupPolicyId;
  /// Backup Vault Resource ID
  final pulumi.Input<String?>? backupVaultId;
  /// Policy Enforced
  final pulumi.Input<bool?>? policyEnforced;

  /// Creates a new [VolumeBackupPropertiesResponse].
  /// [backupPolicyId] Backup Policy Resource ID
  /// [backupVaultId] Backup Vault Resource ID
  /// [policyEnforced] Policy Enforced
  const VolumeBackupPropertiesResponse({
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
      backupPolicyId: (() { final guardedValue = map['backupPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupVaultId: (() { final guardedValue = map['backupVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyEnforced: (() { final guardedValue = map['policyEnforced']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
