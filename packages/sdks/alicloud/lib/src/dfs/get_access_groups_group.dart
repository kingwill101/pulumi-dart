// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessGroupsGroup {
  /// The length of `description` does not exceed 100 bytes.
  final pulumi.Input<String> accessGroupId;
  /// The Name of Access Group. The length Of `access_group_name` does not exceed 100 bytes.
  final pulumi.Input<String> accessGroupName;
  /// The CreateTime of Access Group.
  final pulumi.Input<String> createTime;
  /// The Description of Access Group. The length Of `description` does not exceed 100 bytes.
  final pulumi.Input<String> description;
  /// The ID of the Access Group.
  final pulumi.Input<String> id;
  /// The Number of attached mountpoint.
  final pulumi.Input<int> mountPointCount;
  /// The NetworkType of Access Group. Valid values: `VPC`.
  final pulumi.Input<String> networkType;
  /// The Number of access rule.
  final pulumi.Input<int> ruleCount;

  /// Creates a new [GetAccessGroupsGroup].
  /// [accessGroupId] The length of `description` does not exceed 100 bytes.
  /// [accessGroupName] The Name of Access Group. The length Of `access_group_name` does not exceed 100 bytes.
  /// [createTime] The CreateTime of Access Group.
  /// [description] The Description of Access Group. The length Of `description` does not exceed 100 bytes.
  /// [id] The ID of the Access Group.
  /// [mountPointCount] The Number of attached mountpoint.
  /// [networkType] The NetworkType of Access Group. Valid values: `VPC`.
  /// [ruleCount] The Number of access rule.
  const GetAccessGroupsGroup({
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
      accessGroupId: pulumi.Input.fromValue(map['accessGroupId'] as String),
      accessGroupName: pulumi.Input.fromValue(map['accessGroupName'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      mountPointCount: pulumi.Input.fromValue(map['mountPointCount'] as int),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      ruleCount: pulumi.Input.fromValue(map['ruleCount'] as int),
    );
  }
}

