// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'immutable_storage_with_versioning.dart';
import 'public_access.dart';

/// {@template pulumi_storage_blob_container_args_doc}
/// The set of arguments for BlobContainer.
/// {@endtemplate}
/// {@macro pulumi_storage_blob_container_args_doc}
class BlobContainerArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  final pulumi.Input<String>? containerName;
  /// Default the container to use specified encryption scope for all writes.
  final pulumi.Input<String>? defaultEncryptionScope;
  /// Block override of encryption scope from the container default.
  final pulumi.Input<bool>? denyEncryptionScopeOverride;
  /// Enable NFSv3 all squash on blob container.
  final pulumi.Input<bool>? enableNfsV3AllSquash;
  /// Enable NFSv3 root squash on blob container.
  final pulumi.Input<bool>? enableNfsV3RootSquash;
  /// The object level immutability property of the container. The property is immutable and can only be set to true at the container creation time. Existing containers must undergo a migration process.
  final pulumi.Input<ImmutableStorageWithVersioning>? immutableStorageWithVersioning;
  /// A name-value pair to associate with the container as metadata.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Specifies whether data in the container may be accessed publicly and the level of access.
  final pulumi.Input<PublicAccess>? publicAccess;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [BlobContainerArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [containerName] The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  /// [defaultEncryptionScope] Default the container to use specified encryption scope for all writes.
  /// [denyEncryptionScopeOverride] Block override of encryption scope from the container default.
  /// [enableNfsV3AllSquash] Enable NFSv3 all squash on blob container.
  /// [enableNfsV3RootSquash] Enable NFSv3 root squash on blob container.
  /// [immutableStorageWithVersioning] The object level immutability property of the container. The property is immutable and can only be set to true at the container creation time. Existing containers must undergo a migration process.
  /// [metadata] A name-value pair to associate with the container as metadata.
  /// [publicAccess] Specifies whether data in the container may be accessed publicly and the level of access.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  BlobContainerArgs({
    required String accountName,
    String? containerName,
    String? defaultEncryptionScope,
    bool? denyEncryptionScopeOverride,
    bool? enableNfsV3AllSquash,
    bool? enableNfsV3RootSquash,
    ImmutableStorageWithVersioning? immutableStorageWithVersioning,
    Map<String, String>? metadata,
    PublicAccess? publicAccess,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      containerName = pulumi.Input.asOptionalInput<String>(containerName),
      defaultEncryptionScope = pulumi.Input.asOptionalInput<String>(defaultEncryptionScope),
      denyEncryptionScopeOverride = pulumi.Input.asOptionalInput<bool>(denyEncryptionScopeOverride),
      enableNfsV3AllSquash = pulumi.Input.asOptionalInput<bool>(enableNfsV3AllSquash),
      enableNfsV3RootSquash = pulumi.Input.asOptionalInput<bool>(enableNfsV3RootSquash),
      immutableStorageWithVersioning = pulumi.Input.asOptionalInput<ImmutableStorageWithVersioning>(immutableStorageWithVersioning),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      publicAccess = pulumi.Input.asOptionalInput<PublicAccess>(publicAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'containerName': ?containerName,
      'defaultEncryptionScope': ?defaultEncryptionScope,
      'denyEncryptionScopeOverride': ?denyEncryptionScopeOverride,
      'enableNfsV3AllSquash': ?enableNfsV3AllSquash,
      'enableNfsV3RootSquash': ?enableNfsV3RootSquash,
      'immutableStorageWithVersioning': ?pulumi.Input.mapOptionalInputValue<ImmutableStorageWithVersioning, Map<String, dynamic>>(immutableStorageWithVersioning, (value) => value.toMap()),
      'metadata': ?metadata,
      'publicAccess': ?pulumi.Input.mapOptionalInputValue<PublicAccess, String>(publicAccess, (value) => value.value),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory BlobContainerArgs.fromMap(Map<String, dynamic> map) {
    return BlobContainerArgs(
      accountName: map['accountName'] as String,
      containerName: map['containerName'] == null ? null : map['containerName'] as String,
      defaultEncryptionScope: map['defaultEncryptionScope'] == null ? null : map['defaultEncryptionScope'] as String,
      denyEncryptionScopeOverride: map['denyEncryptionScopeOverride'] == null ? null : map['denyEncryptionScopeOverride'] as bool,
      enableNfsV3AllSquash: map['enableNfsV3AllSquash'] == null ? null : map['enableNfsV3AllSquash'] as bool,
      enableNfsV3RootSquash: map['enableNfsV3RootSquash'] == null ? null : map['enableNfsV3RootSquash'] as bool,
      immutableStorageWithVersioning: map['immutableStorageWithVersioning'] == null ? null : ImmutableStorageWithVersioning.fromMap((map['immutableStorageWithVersioning'] as Map).cast<String, dynamic>()),
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      publicAccess: map['publicAccess'] == null ? null : PublicAccess.fromValue(map['publicAccess'] as String),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

