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
  const PureStoragePolicyArgs({
    required this.privateCloudName,
    required this.resourceGroupName,
    required this.storagePolicyDefinition,
    this.storagePolicyName,
    required this.storagePoolId,
  });

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
      privateCloudName: pulumi.Input.fromValue(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storagePolicyDefinition: pulumi.Input.fromValue(map['storagePolicyDefinition'] as String),
      storagePolicyName: (() { final guardedValue = map['storagePolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePoolId: pulumi.Input.fromValue(map['storagePoolId'] as String),
    );
  }
}

