// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MountPoint resources.
class MountPointState {
  /// The id of the permission group associated with the Mount point, which is used to set the access permissions of the Mount point.
  final pulumi.Input<String>? accessGroupId;
  /// The mount point alias prefix, which specifies the mount point alias prefix.
  final pulumi.Input<String>? aliasPrefix;
  /// The creation time of the Mount point resource.
  final pulumi.Input<String>? createTime;
  /// The description of the Mount point.  No more than 32 characters in length.
  final pulumi.Input<String>? description;
  /// Unique file system identifier, used to retrieve specified file system resources.
  final pulumi.Input<String>? fileSystemId;
  /// The unique identifier of the Mount point, which is used to retrieve the specified mount point resources.
  final pulumi.Input<String>? mountPointId;
  /// The network type of the Mount point.  Only VPC (VPC) is supported.
  final pulumi.Input<String>? networkType;
  /// (Available since v1.242.0) The region ID of the Mount Point.
  final pulumi.Input<String>? regionId;
  /// Mount point status. Value: Inactive: Disable mount points Active: Activate the mount point.
  final pulumi.Input<String>? status;
  /// The ID of the VPC. Specifies the VPC environment to which the mount point belongs.
  final pulumi.Input<String>? vpcId;
  /// VSwitch ID, which specifies the VSwitch resource used to create the mount point.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [MountPointState].
  /// [accessGroupId] The id of the permission group associated with the Mount point, which is used to set the access permissions of the Mount point.
  /// [aliasPrefix] The mount point alias prefix, which specifies the mount point alias prefix.
  /// [createTime] The creation time of the Mount point resource.
  /// [description] The description of the Mount point.  No more than 32 characters in length.
  /// [fileSystemId] Unique file system identifier, used to retrieve specified file system resources.
  /// [mountPointId] The unique identifier of the Mount point, which is used to retrieve the specified mount point resources.
  /// [networkType] The network type of the Mount point.  Only VPC (VPC) is supported.
  /// [regionId] (Available since v1.242.0) The region ID of the Mount Point.
  /// [status] Mount point status. Value: Inactive: Disable mount points Active: Activate the mount point.
  /// [vpcId] The ID of the VPC. Specifies the VPC environment to which the mount point belongs.
  /// [vswitchId] VSwitch ID, which specifies the VSwitch resource used to create the mount point.
  MountPointState({
    pulumi.Output<String>? accessGroupId,
    pulumi.Output<String>? aliasPrefix,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<String>? mountPointId,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      accessGroupId = pulumi.Input.asOptionalInput<String>(accessGroupId),
      aliasPrefix = pulumi.Input.asOptionalInput<String>(aliasPrefix),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      mountPointId = pulumi.Input.asOptionalInput<String>(mountPointId),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupId': ?accessGroupId,
      'aliasPrefix': ?aliasPrefix,
      'createTime': ?createTime,
      'description': ?description,
      'fileSystemId': ?fileSystemId,
      'mountPointId': ?mountPointId,
      'networkType': ?networkType,
      'regionId': ?regionId,
      'status': ?status,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory MountPointState.fromMap(Map<String, dynamic> map) {
    return MountPointState(
      accessGroupId: map['accessGroupId'] == null ? null : pulumi.Output.create<String>(map['accessGroupId'] as String),
      aliasPrefix: map['aliasPrefix'] == null ? null : pulumi.Output.create<String>(map['aliasPrefix'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      mountPointId: map['mountPointId'] == null ? null : pulumi.Output.create<String>(map['mountPointId'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

