// ignore_for_file: unused_element, unnecessary_cast


class GetAccessGroupsGroup {
  /// The length of `description` does not exceed 100 bytes.
  final String accessGroupId;
  /// The Name of Access Group. The length Of `access_group_name` does not exceed 100 bytes.
  final String accessGroupName;
  /// The CreateTime of Access Group.
  final String createTime;
  /// The Description of Access Group. The length Of `description` does not exceed 100 bytes.
  final String description;
  /// The ID of the Access Group.
  final String id;
  /// The Number of attached mountpoint.
  final int mountPointCount;
  /// The NetworkType of Access Group. Valid values: `VPC`.
  final String networkType;
  /// The Number of access rule.
  final int ruleCount;

  /// Creates a new [GetAccessGroupsGroup].
  /// [accessGroupId] The length of `description` does not exceed 100 bytes.
  /// [accessGroupName] The Name of Access Group. The length Of `access_group_name` does not exceed 100 bytes.
  /// [createTime] The CreateTime of Access Group.
  /// [description] The Description of Access Group. The length Of `description` does not exceed 100 bytes.
  /// [id] The ID of the Access Group.
  /// [mountPointCount] The Number of attached mountpoint.
  /// [networkType] The NetworkType of Access Group. Valid values: `VPC`.
  /// [ruleCount] The Number of access rule.
  GetAccessGroupsGroup({
    required this.accessGroupId,
    required this.accessGroupName,
    required this.createTime,
    required this.description,
    required this.id,
    required this.mountPointCount,
    required this.networkType,
    required this.ruleCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupId': accessGroupId,
      'accessGroupName': accessGroupName,
      'createTime': createTime,
      'description': description,
      'id': id,
      'mountPointCount': mountPointCount,
      'networkType': networkType,
      'ruleCount': ruleCount,
    };
  }

  factory GetAccessGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetAccessGroupsGroup(
      accessGroupId: map['accessGroupId'] as String,
      accessGroupName: map['accessGroupName'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      mountPointCount: map['mountPointCount'] as int,
      networkType: map['networkType'] as String,
      ruleCount: map['ruleCount'] as int,
    );
  }
}

