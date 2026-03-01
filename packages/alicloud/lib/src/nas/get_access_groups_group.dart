// ignore_for_file: unused_element, unnecessary_cast


class GetAccessGroupsGroup {
  /// The name of access group.
  final String accessGroupName;
  /// Filter results by a specific AccessGroupType.
  final String accessGroupType;
  /// Filter results by a specific Description.
  final String description;
  /// This ID of this AccessGroup. It is formatted to ``<access_group_id>:<file_system_type>``. Before version 1.95.0, the value is `access_group_name`.
  final String id;
  /// MountTargetCount block of the AccessGroup
  final int mountTargetCount;
  /// RuleCount of the AccessGroup.
  final int ruleCount;
  /// Field `type` has been deprecated from version 1.95.0. Use `access_group_type` instead.
  final String type;

  /// Creates a new [GetAccessGroupsGroup].
  /// [accessGroupName] The name of access group.
  /// [accessGroupType] Filter results by a specific AccessGroupType.
  /// [description] Filter results by a specific Description.
  /// [id] This ID of this AccessGroup. It is formatted to ``<access_group_id>:<file_system_type>``. Before version 1.95.0, the value is `access_group_name`.
  /// [mountTargetCount] MountTargetCount block of the AccessGroup
  /// [ruleCount] RuleCount of the AccessGroup.
  /// [type] Field `type` has been deprecated from version 1.95.0. Use `access_group_type` instead.
  GetAccessGroupsGroup({
    required this.accessGroupName,
    required this.accessGroupType,
    required this.description,
    required this.id,
    required this.mountTargetCount,
    required this.ruleCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': accessGroupName,
      'accessGroupType': accessGroupType,
      'description': description,
      'id': id,
      'mountTargetCount': mountTargetCount,
      'ruleCount': ruleCount,
      'type': type,
    };
  }

  factory GetAccessGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetAccessGroupsGroup(
      accessGroupName: map['accessGroupName'] as String,
      accessGroupType: map['accessGroupType'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      mountTargetCount: map['mountTargetCount'] as int,
      ruleCount: map['ruleCount'] as int,
      type: map['type'] as String,
    );
  }
}

