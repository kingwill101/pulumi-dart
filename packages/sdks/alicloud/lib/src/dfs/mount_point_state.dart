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
  const MountPointState({
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
      accessGroupId: (() { final guardedValue = map['accessGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aliasPrefix: (() { final guardedValue = map['aliasPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mountPointId: (() { final guardedValue = map['mountPointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

