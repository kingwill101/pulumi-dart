// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dfs_mount_point_mount_point_args_doc}
/// The set of arguments for MountPoint.
/// {@endtemplate}
/// {@macro pulumi_dfs_mount_point_mount_point_args_doc}
class MountPointArgs {
  /// The id of the permission group associated with the Mount point, which is used to set the access permissions of the Mount point.
  final pulumi.Input<String> accessGroupId;
  /// The mount point alias prefix, which specifies the mount point alias prefix.
  final pulumi.Input<String>? aliasPrefix;
  /// The description of the Mount point.  No more than 32 characters in length.
  final pulumi.Input<String>? description;
  /// Unique file system identifier, used to retrieve specified file system resources.
  final pulumi.Input<String> fileSystemId;
  /// The network type of the Mount point.  Only VPC (VPC) is supported.
  final pulumi.Input<String> networkType;
  /// Mount point status. Value: Inactive: Disable mount points Active: Activate the mount point.
  final pulumi.Input<String>? status;
  /// The ID of the VPC. Specifies the VPC environment to which the mount point belongs.
  final pulumi.Input<String> vpcId;
  /// VSwitch ID, which specifies the VSwitch resource used to create the mount point.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [MountPointArgs].
  /// [accessGroupId] The id of the permission group associated with the Mount point, which is used to set the access permissions of the Mount point.
  /// [aliasPrefix] The mount point alias prefix, which specifies the mount point alias prefix.
  /// [description] The description of the Mount point.  No more than 32 characters in length.
  /// [fileSystemId] Unique file system identifier, used to retrieve specified file system resources.
  /// [networkType] The network type of the Mount point.  Only VPC (VPC) is supported.
  /// [status] Mount point status. Value: Inactive: Disable mount points Active: Activate the mount point.
  /// [vpcId] The ID of the VPC. Specifies the VPC environment to which the mount point belongs.
  /// [vswitchId] VSwitch ID, which specifies the VSwitch resource used to create the mount point.
  MountPointArgs({
    required this.accessGroupId,
    this.aliasPrefix,
    this.description,
    required this.fileSystemId,
    required this.networkType,
    this.status,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupId': accessGroupId,
      'aliasPrefix': ?aliasPrefix,
      'description': ?description,
      'fileSystemId': fileSystemId,
      'networkType': networkType,
      'status': ?status,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory MountPointArgs.fromMap(Map<String, dynamic> map) {
    return MountPointArgs(
      accessGroupId: pulumi.Input.fromValue(map['accessGroupId'] as String),
      aliasPrefix: (() { final guardedValue = map['aliasPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

