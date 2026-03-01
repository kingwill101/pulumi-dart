// ignore_for_file: unused_element, unnecessary_cast


class GetMountPointsPoint {
  /// The ID of the Access Group.
  final String accessGroupId;
  /// The created time of the Mount Point.
  final String createTime;
  /// The description of the Mount Point.
  final String description;
  /// The ID of the File System.
  final String fileSystemId;
  /// The ID of the Mount Point.
  final String id;
  /// The domain name of the Mount Point.
  final String mountPointDomain;
  /// The ID of the Mount Point.
  final String mountPointId;
  /// The network type of the Mount Point. Valid values: `VPC`.
  final String networkType;
  /// The status of the Mount Point. Valid values: `Active`, `Inactive`.
  final String status;
  /// The ID of the VPC network.
  final String vpcId;
  /// The vswitch id.
  final String vswitchId;

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
  GetMountPointsPoint({
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
      accessGroupId: map['accessGroupId'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      fileSystemId: map['fileSystemId'] as String,
      id: map['id'] as String,
      mountPointDomain: map['mountPointDomain'] as String,
      mountPointId: map['mountPointId'] as String,
      networkType: map['networkType'] as String,
      status: map['status'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

