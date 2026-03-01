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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? encryptType,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vaultName,
    pulumi.Output<String>? vaultStorageClass,
    pulumi.Output<String>? vaultType,
    pulumi.Output<bool>? wormEnabled,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptType = pulumi.Input.asOptionalInput<String>(encryptType),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vaultName = pulumi.Input.asOptionalInput<String>(vaultName),
      vaultStorageClass = pulumi.Input.asOptionalInput<String>(vaultStorageClass),
      vaultType = pulumi.Input.asOptionalInput<String>(vaultType),
      wormEnabled = pulumi.Input.asOptionalInput<bool>(wormEnabled);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptType: map['encryptType'] == null ? null : pulumi.Output.create<String>(map['encryptType'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vaultName: map['vaultName'] == null ? null : pulumi.Output.create<String>(map['vaultName'] as String),
      vaultStorageClass: map['vaultStorageClass'] == null ? null : pulumi.Output.create<String>(map['vaultStorageClass'] as String),
      vaultType: map['vaultType'] == null ? null : pulumi.Output.create<String>(map['vaultType'] as String),
      wormEnabled: map['wormEnabled'] == null ? null : pulumi.Output.create<bool>(map['wormEnabled'] as bool),
    );
  }
}

