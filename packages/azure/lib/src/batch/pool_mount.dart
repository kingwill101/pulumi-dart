// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_mount_azure_blob_file_system.dart';
import 'pool_mount_azure_file_share.dart';
import 'pool_mount_cifs_mount.dart';
import 'pool_mount_nfs_mount.dart';

class PoolMount {
  /// A `azure_blob_file_system` block defined as below.
  final PoolMountAzureBlobFileSystem? azureBlobFileSystem;
  /// A `azure_file_share` block defined as below.
  final List<PoolMountAzureFileShare>? azureFileShares;
  /// A `cifs_mount` block defined as below.
  final List<PoolMountCifsMount>? cifsMounts;
  /// A `nfs_mount` block defined as below.
  final List<PoolMountNfsMount>? nfsMounts;

  /// Creates a new [PoolMount].
  /// [azureBlobFileSystem] A `azure_blob_file_system` block defined as below.
  /// [azureFileShares] A `azure_file_share` block defined as below.
  /// [cifsMounts] A `cifs_mount` block defined as below.
  /// [nfsMounts] A `nfs_mount` block defined as below.
  PoolMount({
    this.azureBlobFileSystem,
    this.azureFileShares,
    this.cifsMounts,
    this.nfsMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobFileSystem': ?azureBlobFileSystem == null ? null : azureBlobFileSystem!.toMap(),
      'azureFileShares': ?azureFileShares == null ? null : pulumi.Input.encodeList<PoolMountAzureFileShare, Map<String, dynamic>>(azureFileShares!, (value) => value.toMap()),
      'cifsMounts': ?cifsMounts == null ? null : pulumi.Input.encodeList<PoolMountCifsMount, Map<String, dynamic>>(cifsMounts!, (value) => value.toMap()),
      'nfsMounts': ?nfsMounts == null ? null : pulumi.Input.encodeList<PoolMountNfsMount, Map<String, dynamic>>(nfsMounts!, (value) => value.toMap()),
    };
  }

  factory PoolMount.fromMap(Map<String, dynamic> map) {
    return PoolMount(
      azureBlobFileSystem: map['azureBlobFileSystem'] == null ? null : PoolMountAzureBlobFileSystem.fromMap((map['azureBlobFileSystem'] as Map).cast<String, dynamic>()),
      azureFileShares: map['azureFileShares'] == null ? null : pulumi.Input.decodeList<PoolMountAzureFileShare>(map['azureFileShares'], (value) => PoolMountAzureFileShare.fromMap((value as Map).cast<String, dynamic>())),
      cifsMounts: map['cifsMounts'] == null ? null : pulumi.Input.decodeList<PoolMountCifsMount>(map['cifsMounts'], (value) => PoolMountCifsMount.fromMap((value as Map).cast<String, dynamic>())),
      nfsMounts: map['nfsMounts'] == null ? null : pulumi.Input.decodeList<PoolMountNfsMount>(map['nfsMounts'], (value) => PoolMountNfsMount.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

