// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_capacity_pool_subvolume_args_doc}
/// The set of arguments for CapacityPoolSubvolume.
/// {@endtemplate}
/// {@macro pulumi_netapp_capacity_pool_subvolume_args_doc}
class CapacityPoolSubvolumeArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// parent path to the subvolume
  final pulumi.Input<String?>? parentPath;
  /// Path to the subvolume
  final pulumi.Input<String?>? path;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Truncate subvolume to the provided size in bytes
  final pulumi.Input<double?>? size;
  /// The name of the subvolume.
  final pulumi.Input<String?>? subvolumeName;
  /// The name of the volume
  final pulumi.Input<String> volumeName;

  /// Creates a new [CapacityPoolSubvolumeArgs].
  /// [accountName] The name of the NetApp account
  /// [parentPath] parent path to the subvolume
  /// [path] Path to the subvolume
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [size] Truncate subvolume to the provided size in bytes
  /// [subvolumeName] The name of the subvolume.
  /// [volumeName] The name of the volume
  const CapacityPoolSubvolumeArgs({
    required this.accountName,
    this.parentPath,
    this.path,
    required this.poolName,
    required this.resourceGroupName,
    this.size,
    this.subvolumeName,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'parentPath': ?parentPath,
      'path': ?path,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'size': ?size,
      'subvolumeName': ?subvolumeName,
      'volumeName': volumeName,
    };
  }

  factory CapacityPoolSubvolumeArgs.fromMap(Map<String, dynamic> map) {
    return CapacityPoolSubvolumeArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      parentPath: (() { final guardedValue = map['parentPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      subvolumeName: (() { final guardedValue = map['subvolumeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}
