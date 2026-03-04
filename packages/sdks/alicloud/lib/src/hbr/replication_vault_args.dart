// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_replication_vault_replication_vault_args_doc}
/// The set of arguments for ReplicationVault.
/// {@endtemplate}
/// {@macro pulumi_hbr_replication_vault_replication_vault_args_doc}
class ReplicationVaultArgs {
  /// The description of the backup vault.
  final pulumi.Input<String>? description;

  /// The encryption type of the backup vault.
  final pulumi.Input<String>? encryptType;

  /// Alibaba Cloud KMS custom Key or Alias. This parameter is required only when EncryptType = KMS.
  final pulumi.Input<String>? kmsKeyId;

  /// The region ID of the source backup vault.
  final pulumi.Input<String> replicationSourceRegionId;

  /// The vault ID of the source backup vault.
  final pulumi.Input<String> replicationSourceVaultId;

  /// The name of the backup vault.
  final pulumi.Input<String> vaultName;

  /// Backup Vault Storage Class
  final pulumi.Input<String>? vaultStorageClass;

  /// Creates a new [ReplicationVaultArgs].
  /// [description] The description of the backup vault.
  /// [encryptType] The encryption type of the backup vault.
  /// [kmsKeyId] Alibaba Cloud KMS custom Key or Alias. This parameter is required only when EncryptType = KMS.
  /// [replicationSourceRegionId] The region ID of the source backup vault.
  /// [replicationSourceVaultId] The vault ID of the source backup vault.
  /// [vaultName] The name of the backup vault.
  /// [vaultStorageClass] Backup Vault Storage Class
  ReplicationVaultArgs({
    this.description,
    this.encryptType,
    this.kmsKeyId,
    required this.replicationSourceRegionId,
    required this.replicationSourceVaultId,
    required this.vaultName,
    this.vaultStorageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'encryptType': ?encryptType,
      'kmsKeyId': ?kmsKeyId,
      'replicationSourceRegionId': replicationSourceRegionId,
      'replicationSourceVaultId': replicationSourceVaultId,
      'vaultName': vaultName,
      'vaultStorageClass': ?vaultStorageClass,
    };
  }

  factory ReplicationVaultArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationVaultArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptType: (() {
        final guardedValue = map['encryptType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationSourceRegionId: pulumi.Input.fromValue(
        map['replicationSourceRegionId'] as String,
      ),
      replicationSourceVaultId: pulumi.Input.fromValue(
        map['replicationSourceVaultId'] as String,
      ),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
      vaultStorageClass: (() {
        final guardedValue = map['vaultStorageClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
