// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_pure_storage_policy_args_doc}
/// The set of arguments for PureStoragePolicy.
/// {@endtemplate}
/// {@macro pulumi_avs_pure_storage_policy_args_doc}
class PureStoragePolicyArgs {
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Definition of a Pure Storage Policy Based Management policy
  final pulumi.Input<String> storagePolicyDefinition;
  /// Name of the storage policy.
  final pulumi.Input<String>? storagePolicyName;
  /// Azure resource ID of the Pure Storage Pool associated with the storage policy
  final pulumi.Input<String> storagePoolId;

  /// Creates a new [PureStoragePolicyArgs].
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storagePolicyDefinition] Definition of a Pure Storage Policy Based Management policy
  /// [storagePolicyName] Name of the storage policy.
  /// [storagePoolId] Azure resource ID of the Pure Storage Pool associated with the storage policy
  PureStoragePolicyArgs({
    required String privateCloudName,
    required String resourceGroupName,
    required String storagePolicyDefinition,
    String? storagePolicyName,
    required String storagePoolId,
  }) :
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storagePolicyDefinition = pulumi.Input.asInput<String>(storagePolicyDefinition),
      storagePolicyName = pulumi.Input.asOptionalInput<String>(storagePolicyName),
      storagePoolId = pulumi.Input.asInput<String>(storagePoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
      'storagePolicyDefinition': storagePolicyDefinition,
      'storagePolicyName': ?storagePolicyName,
      'storagePoolId': storagePoolId,
    };
  }

  factory PureStoragePolicyArgs.fromMap(Map<String, dynamic> map) {
    return PureStoragePolicyArgs(
      privateCloudName: map['privateCloudName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storagePolicyDefinition: map['storagePolicyDefinition'] as String,
      storagePolicyName: map['storagePolicyName'] == null ? null : map['storagePolicyName'] as String,
      storagePoolId: map['storagePoolId'] as String,
    );
  }
}

