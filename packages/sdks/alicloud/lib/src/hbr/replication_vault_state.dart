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
    pulumi.Output<String>? description,
    pulumi.Output<String>? encryptType,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? replicationSourceRegionId,
    pulumi.Output<String>? replicationSourceVaultId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vaultName,
    pulumi.Output<String>? vaultStorageClass,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptType = pulumi.Input.asOptionalInput<String>(encryptType),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      replicationSourceRegionId = pulumi.Input.asOptionalInput<String>(replicationSourceRegionId),
      replicationSourceVaultId = pulumi.Input.asOptionalInput<String>(replicationSourceVaultId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vaultName = pulumi.Input.asOptionalInput<String>(vaultName),
      vaultStorageClass = pulumi.Input.asOptionalInput<String>(vaultStorageClass);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptType: map['encryptType'] == null ? null : pulumi.Output.create<String>(map['encryptType'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      replicationSourceRegionId: map['replicationSourceRegionId'] == null ? null : pulumi.Output.create<String>(map['replicationSourceRegionId'] as String),
      replicationSourceVaultId: map['replicationSourceVaultId'] == null ? null : pulumi.Output.create<String>(map['replicationSourceVaultId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vaultName: map['vaultName'] == null ? null : pulumi.Output.create<String>(map['vaultName'] as String),
      vaultStorageClass: map['vaultStorageClass'] == null ? null : pulumi.Output.create<String>(map['vaultStorageClass'] as String),
    );
  }
}

