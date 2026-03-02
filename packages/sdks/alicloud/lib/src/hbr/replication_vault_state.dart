// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReplicationVault resources.
class ReplicationVaultState {
  /// The description of the backup vault.
  final pulumi.Input<String>? description;
  /// The encryption type of the backup vault.
  final pulumi.Input<String>? encryptType;
  /// Alibaba Cloud KMS custom Key or Alias. This parameter is required only when EncryptType = KMS.
  final pulumi.Input<String>? kmsKeyId;
  /// RegionId
  final pulumi.Input<String>? regionId;
  /// The region ID of the source backup vault.
  final pulumi.Input<String>? replicationSourceRegionId;
  /// The vault ID of the source backup vault.
  final pulumi.Input<String>? replicationSourceVaultId;
  /// The status of the mirror backup vault.
  final pulumi.Input<String>? status;
  /// The name of the backup vault.
  final pulumi.Input<String>? vaultName;
  /// Backup Vault Storage Class
  final pulumi.Input<String>? vaultStorageClass;

  /// Creates a new [ReplicationVaultState].
  /// [description] The description of the backup vault.
  /// [encryptType] The encryption type of the backup vault.
  /// [kmsKeyId] Alibaba Cloud KMS custom Key or Alias. This parameter is required only when EncryptType = KMS.
  /// [regionId] RegionId
  /// [replicationSourceRegionId] The region ID of the source backup vault.
  /// [replicationSourceVaultId] The vault ID of the source backup vault.
  /// [status] The status of the mirror backup vault.
  /// [vaultName] The name of the backup vault.
  /// [vaultStorageClass] Backup Vault Storage Class
  ReplicationVaultState({
    this.description,
    this.encryptType,
    this.kmsKeyId,
    this.regionId,
    this.replicationSourceRegionId,
    this.replicationSourceVaultId,
    this.status,
    this.vaultName,
    this.vaultStorageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'encryptType': ?encryptType,
      'kmsKeyId': ?kmsKeyId,
      'regionId': ?regionId,
      'replicationSourceRegionId': ?replicationSourceRegionId,
      'replicationSourceVaultId': ?replicationSourceVaultId,
      'status': ?status,
      'vaultName': ?vaultName,
      'vaultStorageClass': ?vaultStorageClass,
    };
  }

  factory ReplicationVaultState.fromMap(Map<String, dynamic> map) {
    return ReplicationVaultState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encryptType: map['encryptType'] == null ? null : (map['encryptType'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      replicationSourceRegionId: map['replicationSourceRegionId'] == null ? null : (map['replicationSourceRegionId'] as String).input(),
      replicationSourceVaultId: map['replicationSourceVaultId'] == null ? null : (map['replicationSourceVaultId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vaultName: map['vaultName'] == null ? null : (map['vaultName'] as String).input(),
      vaultStorageClass: map['vaultStorageClass'] == null ? null : (map['vaultStorageClass'] as String).input(),
    );
  }
}

