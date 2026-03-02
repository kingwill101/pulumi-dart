// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_pure_storage_policy_args_doc}
/// Arguments for getPureStoragePolicy.
/// {@endtemplate}
/// {@macro pulumi_avs_get_pure_storage_policy_args_doc}
class GetPureStoragePolicyArgs {
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the storage policy.
  final pulumi.Input<String> storagePolicyName;

  /// Creates a new [GetPureStoragePolicyArgs].
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storagePolicyName] Name of the storage policy.
  GetPureStoragePolicyArgs({
    required this.privateCloudName,
    required this.resourceGroupName,
    required this.storagePolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
      'storagePolicyName': storagePolicyName,
    };
  }

  factory GetPureStoragePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPureStoragePolicyArgs(
      privateCloudName: (map['privateCloudName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storagePolicyName: (map['storagePolicyName'] as String).input(),
    );
  }
}

