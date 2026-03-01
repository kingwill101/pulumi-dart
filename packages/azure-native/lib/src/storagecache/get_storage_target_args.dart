// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagecache_get_storage_target_args_doc}
/// Arguments for getStorageTarget.
/// {@endtemplate}
/// {@macro pulumi_storagecache_get_storage_target_args_doc}
class GetStorageTargetArgs {
  /// Name of cache. Length of name must not be greater than 80 and chars must be from the [-0-9a-zA-Z_] char class.
  final pulumi.Input<String> cacheName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Storage Target.
  final pulumi.Input<String> storageTargetName;

  /// Creates a new [GetStorageTargetArgs].
  /// [cacheName] Name of cache. Length of name must not be greater than 80 and chars must be from the [-0-9a-zA-Z_] char class.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageTargetName] Name of Storage Target.
  GetStorageTargetArgs({
    required String cacheName,
    required String resourceGroupName,
    required String storageTargetName,
  }) :
      cacheName = pulumi.Input.asInput<String>(cacheName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageTargetName = pulumi.Input.asInput<String>(storageTargetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheName': cacheName,
      'resourceGroupName': resourceGroupName,
      'storageTargetName': storageTargetName,
    };
  }

  factory GetStorageTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageTargetArgs(
      cacheName: map['cacheName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storageTargetName: map['storageTargetName'] as String,
    );
  }
}

