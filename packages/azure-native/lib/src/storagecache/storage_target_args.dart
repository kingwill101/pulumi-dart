// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_nfs_target.dart';
import 'clfs_target.dart';
import 'namespace_junction.dart';
import 'nfs3_target.dart';
import 'unknown_target.dart';

/// {@template pulumi_storagecache_storage_target_args_doc}
/// The set of arguments for StorageTarget.
/// {@endtemplate}
/// {@macro pulumi_storagecache_storage_target_args_doc}
class StorageTargetArgs {
  /// Properties when targetType is blobNfs.
  final pulumi.Input<BlobNfsTarget>? blobNfs;
  /// Name of cache. Length of name must not be greater than 80 and chars must be from the [-0-9a-zA-Z_] char class.
  final pulumi.Input<String> cacheName;
  /// Properties when targetType is clfs.
  final pulumi.Input<ClfsTarget>? clfs;
  /// List of cache namespace junctions to target for namespace associations.
  final pulumi.Input<List<NamespaceJunction>>? junctions;
  /// Properties when targetType is nfs3.
  final pulumi.Input<Nfs3Target>? nfs3;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Storage target operational state.
  final pulumi.Input<String>? state;
  /// Name of Storage Target.
  final pulumi.Input<String>? storageTargetName;
  /// Type of the Storage Target.
  final pulumi.Input<String> targetType;
  /// Properties when targetType is unknown.
  final pulumi.Input<UnknownTarget>? unknown;

  /// Creates a new [StorageTargetArgs].
  /// [blobNfs] Properties when targetType is blobNfs.
  /// [cacheName] Name of cache. Length of name must not be greater than 80 and chars must be from the [-0-9a-zA-Z_] char class.
  /// [clfs] Properties when targetType is clfs.
  /// [junctions] List of cache namespace junctions to target for namespace associations.
  /// [nfs3] Properties when targetType is nfs3.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [state] Storage target operational state.
  /// [storageTargetName] Name of Storage Target.
  /// [targetType] Type of the Storage Target.
  /// [unknown] Properties when targetType is unknown.
  StorageTargetArgs({
    BlobNfsTarget? blobNfs,
    required String cacheName,
    ClfsTarget? clfs,
    List<NamespaceJunction>? junctions,
    Nfs3Target? nfs3,
    required String resourceGroupName,
    String? state,
    String? storageTargetName,
    required String targetType,
    UnknownTarget? unknown,
  }) :
      blobNfs = pulumi.Input.asOptionalInput<BlobNfsTarget>(blobNfs),
      cacheName = pulumi.Input.asInput<String>(cacheName),
      clfs = pulumi.Input.asOptionalInput<ClfsTarget>(clfs),
      junctions = pulumi.Input.asOptionalInput<List<NamespaceJunction>>(junctions),
      nfs3 = pulumi.Input.asOptionalInput<Nfs3Target>(nfs3),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      state = pulumi.Input.asOptionalInput<String>(state),
      storageTargetName = pulumi.Input.asOptionalInput<String>(storageTargetName),
      targetType = pulumi.Input.asInput<String>(targetType),
      unknown = pulumi.Input.asOptionalInput<UnknownTarget>(unknown);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobNfs': ?pulumi.Input.mapOptionalInputValue<BlobNfsTarget, Map<String, dynamic>>(blobNfs, (value) => value.toMap()),
      'cacheName': cacheName,
      'clfs': ?pulumi.Input.mapOptionalInputValue<ClfsTarget, Map<String, dynamic>>(clfs, (value) => value.toMap()),
      'junctions': ?pulumi.Input.mapOptionalInputValue<List<NamespaceJunction>, List<Map<String, dynamic>>>(junctions, (value) => pulumi.Input.encodeList<NamespaceJunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nfs3': ?pulumi.Input.mapOptionalInputValue<Nfs3Target, Map<String, dynamic>>(nfs3, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'state': ?state,
      'storageTargetName': ?storageTargetName,
      'targetType': targetType,
      'unknown': ?pulumi.Input.mapOptionalInputValue<UnknownTarget, Map<String, dynamic>>(unknown, (value) => value.toMap()),
    };
  }

  factory StorageTargetArgs.fromMap(Map<String, dynamic> map) {
    return StorageTargetArgs(
      blobNfs: map['blobNfs'] == null ? null : BlobNfsTarget.fromMap((map['blobNfs'] as Map).cast<String, dynamic>()),
      cacheName: map['cacheName'] as String,
      clfs: map['clfs'] == null ? null : ClfsTarget.fromMap((map['clfs'] as Map).cast<String, dynamic>()),
      junctions: map['junctions'] == null ? null : pulumi.Input.decodeList<NamespaceJunction>(map['junctions'], (value) => NamespaceJunction.fromMap((value as Map).cast<String, dynamic>())),
      nfs3: map['nfs3'] == null ? null : Nfs3Target.fromMap((map['nfs3'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      storageTargetName: map['storageTargetName'] == null ? null : map['storageTargetName'] as String,
      targetType: map['targetType'] as String,
      unknown: map['unknown'] == null ? null : UnknownTarget.fromMap((map['unknown'] as Map).cast<String, dynamic>()),
    );
  }
}

