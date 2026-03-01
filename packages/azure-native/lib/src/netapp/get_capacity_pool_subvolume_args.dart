// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_capacity_pool_subvolume_args_doc}
/// Arguments for getCapacityPoolSubvolume.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_capacity_pool_subvolume_args_doc}
class GetCapacityPoolSubvolumeArgs {
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

  /// Creates a new [GetCapacityPoolSubvolumeArgs].
  /// [accountName] The name of the NetApp account
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subvolumeName] The name of the subvolume.
  /// [volumeName] The name of the volume
  GetCapacityPoolSubvolumeArgs({
    required String accountName,
    required String poolName,
    required String resourceGroupName,
    required String subvolumeName,
    required String volumeName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subvolumeName = pulumi.Input.asInput<String>(subvolumeName),
      volumeName = pulumi.Input.asInput<String>(volumeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'subvolumeName': subvolumeName,
      'volumeName': volumeName,
    };
  }

  factory GetCapacityPoolSubvolumeArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolSubvolumeArgs(
      accountName: map['accountName'] as String,
      poolName: map['poolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      subvolumeName: map['subvolumeName'] as String,
      volumeName: map['volumeName'] as String,
    );
  }
}

