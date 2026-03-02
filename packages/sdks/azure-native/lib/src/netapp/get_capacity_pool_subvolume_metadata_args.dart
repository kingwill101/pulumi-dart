// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_capacity_pool_subvolume_metadata_args_doc}
/// Arguments for getCapacityPoolSubvolumeMetadata.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_capacity_pool_subvolume_metadata_args_doc}
class GetCapacityPoolSubvolumeMetadataArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the subvolume.
  final pulumi.Input<String> subvolumeName;
  /// The name of the volume
  final pulumi.Input<String> volumeName;

  /// Creates a new [GetCapacityPoolSubvolumeMetadataArgs].
  /// [accountName] The name of the NetApp account
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subvolumeName] The name of the subvolume.
  /// [volumeName] The name of the volume
  GetCapacityPoolSubvolumeMetadataArgs({
    required this.accountName,
    required this.poolName,
    required this.resourceGroupName,
    required this.subvolumeName,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'subvolumeName': subvolumeName,
      'volumeName': volumeName,
    };
  }

  factory GetCapacityPoolSubvolumeMetadataArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolSubvolumeMetadataArgs(
      accountName: (map['accountName'] as String).input(),
      poolName: (map['poolName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subvolumeName: (map['subvolumeName'] as String).input(),
      volumeName: (map['volumeName'] as String).input(),
    );
  }
}

