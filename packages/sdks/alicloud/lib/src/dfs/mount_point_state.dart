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
    this.accessGroupId,
    this.aliasPrefix,
    this.createTime,
    this.description,
    this.fileSystemId,
    this.mountPointId,
    this.networkType,
    this.regionId,
    this.status,
    this.vpcId,
    this.vswitchId,
  });

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
      accessGroupId: map['accessGroupId'] == null ? null : (map['accessGroupId'] as String).input(),
      aliasPrefix: map['aliasPrefix'] == null ? null : (map['aliasPrefix'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fileSystemId: map['fileSystemId'] == null ? null : (map['fileSystemId'] as String).input(),
      mountPointId: map['mountPointId'] == null ? null : (map['mountPointId'] as String).input(),
      networkType: map['networkType'] == null ? null : (map['networkType'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

