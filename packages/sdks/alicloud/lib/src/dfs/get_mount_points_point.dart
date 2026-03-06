// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMountPointsPoint {
  /// The ID of the Access Group.
  final pulumi.Input<String> accessGroupId;
  /// The created time of the Mount Point.
  final pulumi.Input<String> createTime;
  /// The description of the Mount Point.
  final pulumi.Input<String> description;
  /// The ID of the File System.
  final pulumi.Input<String> fileSystemId;
  /// The ID of the Mount Point.
  final pulumi.Input<String> id;
  /// The domain name of the Mount Point.
  final pulumi.Input<String> mountPointDomain;
  /// The ID of the Mount Point.
  final pulumi.Input<String> mountPointId;
  /// The network type of the Mount Point. Valid values: `VPC`.
  final pulumi.Input<String> networkType;
  /// The status of the Mount Point. Valid values: `Active`, `Inactive`.
  final pulumi.Input<String> status;
  /// The ID of the VPC network.
  final pulumi.Input<String> vpcId;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetMountPointsPoint].
  /// [accessGroupId] The ID of the Access Group.
  /// [createTime] The created time of the Mount Point.
  /// [description] The description of the Mount Point.
  /// [fileSystemId] The ID of the File System.
  /// [id] The ID of the Mount Point.
  /// [mountPointDomain] The domain name of the Mount Point.
  /// [mountPointId] The ID of the Mount Point.
  /// [networkType] The network type of the Mount Point. Valid values: `VPC`.
  /// [status] The status of the Mount Point. Valid values: `Active`, `Inactive`.
  /// [vpcId] The ID of the VPC network.
  /// [vswitchId] The vswitch id.
  const GetMountPointsPoint({
    required this.accessGroupId,
    required this.createTime,
    required this.description,
    required this.fileSystemId,
    required this.id,
    required this.mountPointDomain,
    required this.mountPointId,
    required this.networkType,
    required this.status,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupId': accessGroupId,
      'createTime': createTime,
      'description': description,
      'fileSystemId': fileSystemId,
      'id': id,
      'mountPointDomain': mountPointDomain,
      'mountPointId': mountPointId,
      'networkType': networkType,
      'status': status,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetMountPointsPoint.fromMap(Map<String, dynamic> map) {
    return GetMountPointsPoint(
      accessGroupId: pulumi.Input.fromValue(map['accessGroupId'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      mountPointDomain: pulumi.Input.fromValue(map['mountPointDomain'] as String),
      mountPointId: pulumi.Input.fromValue(map['mountPointId'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

