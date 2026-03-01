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
  final pulumi.Input<String>? parentPath;
  /// Path to the subvolume
  final pulumi.Input<String>? path;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Truncate subvolume to the provided size in bytes
  final pulumi.Input<double>? size;
  /// The name of the subvolume.
  final pulumi.Input<String>? subvolumeName;
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
  CapacityPoolSubvolumeArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? parentPath,
    pulumi.Output<String>? path,
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<double>? size,
    pulumi.Output<String>? subvolumeName,
    required pulumi.Output<String> volumeName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      parentPath = pulumi.Input.asOptionalInput<String>(parentPath),
      path = pulumi.Input.asOptionalInput<String>(path),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      size = pulumi.Input.asOptionalInput<double>(size),
      subvolumeName = pulumi.Input.asOptionalInput<String>(subvolumeName),
      volumeName = pulumi.Input.asInput<String>(volumeName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      parentPath: map['parentPath'] == null ? null : pulumi.Output.create<String>(map['parentPath'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<double>(map['size'] as double),
      subvolumeName: map['subvolumeName'] == null ? null : pulumi.Output.create<String>(map['subvolumeName'] as String),
      volumeName: pulumi.Output.create<String>(map['volumeName'] as String),
    );
  }
}

