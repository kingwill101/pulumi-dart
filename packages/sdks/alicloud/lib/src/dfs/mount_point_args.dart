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
    required pulumi.Output<String> accessGroupId,
    pulumi.Output<String>? aliasPrefix,
    pulumi.Output<String>? description,
    required pulumi.Output<String> fileSystemId,
    required pulumi.Output<String> networkType,
    pulumi.Output<String>? status,
    required pulumi.Output<String> vpcId,
    required pulumi.Output<String> vswitchId,
  }) :
      accessGroupId = pulumi.Input.asInput<String>(accessGroupId),
      aliasPrefix = pulumi.Input.asOptionalInput<String>(aliasPrefix),
      description = pulumi.Input.asOptionalInput<String>(description),
      fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
      networkType = pulumi.Input.asInput<String>(networkType),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

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
      accessGroupId: pulumi.Output.create<String>(map['accessGroupId'] as String),
      aliasPrefix: map['aliasPrefix'] == null ? null : pulumi.Output.create<String>(map['aliasPrefix'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fileSystemId: pulumi.Output.create<String>(map['fileSystemId'] as String),
      networkType: pulumi.Output.create<String>(map['networkType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

