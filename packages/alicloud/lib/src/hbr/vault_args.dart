// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_vault_vault_args_doc}
/// The set of arguments for Vault.
/// {@endtemplate}
/// {@macro pulumi_hbr_vault_vault_args_doc}
class VaultArgs {
  /// The description of Vault. Defaults to an empty string.
  final pulumi.Input<String>? description;
  /// Source Encryption Type，It is valid only when vault_type is `STANDARD` or `OTS_BACKUP`. Default value: `HBR_PRIVATE`. Valid values:
  /// - `HBR_PRIVATE`: HBR is fully hosted, uses the backup service's own encryption method.
  /// - `KMS`: Use Alibaba Cloud Kms to encryption.
  final pulumi.Input<String>? encryptType;
  /// The key id or alias name of Alibaba Cloud Kms. It is required and valid only when encrypt_type is `KMS`.
  final pulumi.Input<String>? kmsKeyId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of Vault.
  final pulumi.Input<String> vaultName;
  /// The storage class of Vault. Valid values: `STANDARD`.
  final pulumi.Input<String>? vaultStorageClass;
  /// The type of Vault. Valid values:
  /// - `STANDARD`: Standard backup vault.
  /// - `OTS_BACKUP`: Backup vault for Tablestore. **NOTE:** We recommend that you use `STANDARD`. The cloud backup product will upgrade the backup vault, and the `vault_type` will be changed from `OTS_BACKUP` to `STANDARD`.
  final pulumi.Input<String>? vaultType;
  /// Indicates whether the immutable backup feature is enabled. Valid values: `true`, `false`.
  final pulumi.Input<bool>? wormEnabled;

  /// Creates a new [VaultArgs].
  /// [description] The description of Vault. Defaults to an empty string.
  /// [encryptType] Source Encryption Type，It is valid only when vault_type is `STANDARD` or `OTS_BACKUP`. Default value: `HBR_PRIVATE`. Valid values:
  /// [kmsKeyId] The key id or alias name of Alibaba Cloud Kms. It is required and valid only when encrypt_type is `KMS`.
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag of the resource.
  /// [vaultName] The name of Vault.
  /// [vaultStorageClass] The storage class of Vault. Valid values: `STANDARD`.
  /// [vaultType] The type of Vault. Valid values:
  /// [wormEnabled] Indicates whether the immutable backup feature is enabled. Valid values: `true`, `false`.
  VaultArgs({
    String? description,
    String? encryptType,
    String? kmsKeyId,
    String? resourceGroupId,
    Map<String, String>? tags,
    required String vaultName,
    String? vaultStorageClass,
    String? vaultType,
    bool? wormEnabled,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptType = pulumi.Input.asOptionalInput<String>(encryptType),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vaultName = pulumi.Input.asInput<String>(vaultName),
      vaultStorageClass = pulumi.Input.asOptionalInput<String>(vaultStorageClass),
      vaultType = pulumi.Input.asOptionalInput<String>(vaultType),
      wormEnabled = pulumi.Input.asOptionalInput<bool>(wormEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'encryptType': ?encryptType,
      'kmsKeyId': ?kmsKeyId,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'vaultName': vaultName,
      'vaultStorageClass': ?vaultStorageClass,
      'vaultType': ?vaultType,
      'wormEnabled': ?wormEnabled,
    };
  }

  factory VaultArgs.fromMap(Map<String, dynamic> map) {
    return VaultArgs(
      description: map['description'] == null ? null : map['description'] as String,
      encryptType: map['encryptType'] == null ? null : map['encryptType'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vaultName: map['vaultName'] as String,
      vaultStorageClass: map['vaultStorageClass'] == null ? null : map['vaultStorageClass'] as String,
      vaultType: map['vaultType'] == null ? null : map['vaultType'] as String,
      wormEnabled: map['wormEnabled'] == null ? null : map['wormEnabled'] as bool,
    );
  }
}

