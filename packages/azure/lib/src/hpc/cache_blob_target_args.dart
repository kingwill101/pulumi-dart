// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hpc_cache_blob_target_cache_blob_target_args_doc}
/// The set of arguments for CacheBlobTarget.
/// {@endtemplate}
/// {@macro pulumi_hpc_cache_blob_target_cache_blob_target_args_doc}
class CacheBlobTargetArgs {
  /// The name of the access policy applied to this target. Defaults to `default`.
  final pulumi.Input<String>? accessPolicyName;
  /// The name HPC Cache, which the HPC Cache Blob Target will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String> cacheName;
  /// The name of the HPC Cache Blob Target. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The client-facing file path of the HPC Cache Blob Target.
  final pulumi.Input<String> namespacePath;
  /// The name of the Resource Group in which to create the HPC Cache Blob Target. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The Resource Manager ID of the Storage Container used as the HPC Cache Blob Target. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This is the Resource Manager ID of the Storage Container, rather than the regular ID - and can be accessed on the `azure.storage.Container` Data Source/Resource as `resource_manager_id`.
  final pulumi.Input<String> storageContainerId;

  /// Creates a new [CacheBlobTargetArgs].
  /// [accessPolicyName] The name of the access policy applied to this target. Defaults to `default`.
  /// [cacheName] The name HPC Cache, which the HPC Cache Blob Target will be added to. Changing this forces a new resource to be created.
  /// [name] The name of the HPC Cache Blob Target. Changing this forces a new resource to be created.
  /// [namespacePath] The client-facing file path of the HPC Cache Blob Target.
  /// [resourceGroupName] The name of the Resource Group in which to create the HPC Cache Blob Target. Changing this forces a new resource to be created.
  /// [storageContainerId] The Resource Manager ID of the Storage Container used as the HPC Cache Blob Target. Changing this forces a new resource to be created.
  CacheBlobTargetArgs({
    String? accessPolicyName,
    required String cacheName,
    String? name,
    required String namespacePath,
    required String resourceGroupName,
    required String storageContainerId,
  }) :
      accessPolicyName = pulumi.Input.asOptionalInput<String>(accessPolicyName),
      cacheName = pulumi.Input.asInput<String>(cacheName),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespacePath = pulumi.Input.asInput<String>(namespacePath),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageContainerId = pulumi.Input.asInput<String>(storageContainerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': ?accessPolicyName,
      'cacheName': cacheName,
      'name': ?name,
      'namespacePath': namespacePath,
      'resourceGroupName': resourceGroupName,
      'storageContainerId': storageContainerId,
    };
  }

  factory CacheBlobTargetArgs.fromMap(Map<String, dynamic> map) {
    return CacheBlobTargetArgs(
      accessPolicyName: map['accessPolicyName'] == null ? null : map['accessPolicyName'] as String,
      cacheName: map['cacheName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namespacePath: map['namespacePath'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storageContainerId: map['storageContainerId'] as String,
    );
  }
}

