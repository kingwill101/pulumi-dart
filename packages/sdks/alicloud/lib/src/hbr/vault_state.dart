// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Vault resources.
class VaultState {
  /// (Available since v1.243.0) The time when the backup vault was created.
  final pulumi.Input<String>? createTime;
  /// The description of Vault. Defaults to an empty string.
  final pulumi.Input<String>? description;
  /// Source Encryption Type，It is valid only when vault_type is `STANDARD` or `OTS_BACKUP`. Default value: `HBR_PRIVATE`. Valid values:
  /// - `HBR_PRIVATE`: HBR is fully hosted, uses the backup service's own encryption method.
  /// - `KMS`: Use Alibaba Cloud Kms to encryption.
  final pulumi.Input<String>? encryptType;
  /// The key id or alias name of Alibaba Cloud Kms. It is required and valid only when encrypt_type is `KMS`.
  final pulumi.Input<String>? kmsKeyId;
  /// (Available since v1.243.0) The ID of the region in which the backup vault resides.
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the Vault.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of Vault.
  final pulumi.Input<String>? vaultName;
  /// The storage class of Vault. Valid values: `STANDARD`.
  final pulumi.Input<String>? vaultStorageClass;
  /// The type of Vault. Valid values:
  /// - `STANDARD`: Standard backup vault.
  /// - `OTS_BACKUP`: Backup vault for Tablestore. **NOTE:** We recommend that you use `STANDARD`. The cloud backup product will upgrade the backup vault, and the `vault_type` will be changed from `OTS_BACKUP` to `STANDARD`.
  final pulumi.Input<String>? vaultType;
  /// Indicates whether the immutable backup feature is enabled. Valid values: `true`, `false`.
  final pulumi.Input<bool>? wormEnabled;

  /// Creates a new [VaultState].
  /// [createTime] (Available since v1.243.0) The time when the backup vault was created.
  /// [description] The description of Vault. Defaults to an empty string.
  /// [encryptType] Source Encryption Type，It is valid only when vault_type is `STANDARD` or `OTS_BACKUP`. Default value: `HBR_PRIVATE`. Valid values:
  /// [kmsKeyId] The key id or alias name of Alibaba Cloud Kms. It is required and valid only when encrypt_type is `KMS`.
  /// [regionId] (Available since v1.243.0) The ID of the region in which the backup vault resides.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the Vault.
  /// [tags] The tag of the resource.
  /// [vaultName] The name of Vault.
  /// [vaultStorageClass] The storage class of Vault. Valid values: `STANDARD`.
  /// [vaultType] The type of Vault. Valid values:
  /// [wormEnabled] Indicates whether the immutable backup feature is enabled. Valid values: `true`, `false`.
  VaultState({
    this.createTime,
    this.description,
    this.encryptType,
    this.kmsKeyId,
    this.regionId,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vaultName,
    this.vaultStorageClass,
    this.vaultType,
    this.wormEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'encryptType': ?encryptType,
      'kmsKeyId': ?kmsKeyId,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vaultName': ?vaultName,
      'vaultStorageClass': ?vaultStorageClass,
      'vaultType': ?vaultType,
      'wormEnabled': ?wormEnabled,
    };
  }

  factory VaultState.fromMap(Map<String, dynamic> map) {
    return VaultState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encryptType: map['encryptType'] == null ? null : (map['encryptType'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vaultName: map['vaultName'] == null ? null : (map['vaultName'] as String).input(),
      vaultStorageClass: map['vaultStorageClass'] == null ? null : (map['vaultStorageClass'] as String).input(),
      vaultType: map['vaultType'] == null ? null : (map['vaultType'] as String).input(),
      wormEnabled: map['wormEnabled'] == null ? null : (map['wormEnabled'] as bool).input(),
    );
  }
}

