// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessGroupsGroup {
  /// The name of access group.
  final pulumi.Input<String> accessGroupName;
  /// Filter results by a specific AccessGroupType.
  final pulumi.Input<String> accessGroupType;
  /// Filter results by a specific Description.
  final pulumi.Input<String> description;
  /// This ID of this AccessGroup. It is formatted to ``<access_group_id>:<file_system_type>``. Before version 1.95.0, the value is `access_group_name`.
  final pulumi.Input<String> id;
  /// MountTargetCount block of the AccessGroup
  final pulumi.Input<int> mountTargetCount;
  /// RuleCount of the AccessGroup.
  final pulumi.Input<int> ruleCount;
  /// Field `type` has been deprecated from version 1.95.0. Use `access_group_type` instead.
  final pulumi.Input<String> type;

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
      accessGroupName: (map['accessGroupName'] as String).input(),
      accessGroupType: (map['accessGroupType'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      mountTargetCount: (map['mountTargetCount'] as int).input(),
      ruleCount: (map['ruleCount'] as int).input(),
      type: (map['type'] as String).input(),
    );
  }
}

