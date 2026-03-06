// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessGroupsGroup {
  /// The name of access group.
  final pulumi.Input<String> accessGroupName;
  /// Filter results by a specific AccessGroupType.
  final pulumi.Input<String> accessGroupType;
  /// Filter results by a specific Description.
  final pulumi.Input<String> description;
  /// This ID of this AccessGroup. It is formatted to ``&lt;access_group_id&gt;:&lt;file_system_type&gt;``. Before version 1.95.0, the value is `access_group_name`.
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
  /// [id] This ID of this AccessGroup. It is formatted to ``&lt;access_group_id&gt;:&lt;file_system_type&gt;``. Before version 1.95.0, the value is `access_group_name`.
  /// [mountTargetCount] MountTargetCount block of the AccessGroup
  /// [ruleCount] RuleCount of the AccessGroup.
  /// [type] Field `type` has been deprecated from version 1.95.0. Use `access_group_type` instead.
  const GetAccessGroupsGroup({
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
      accessGroupName: pulumi.Input.fromValue(map['accessGroupName'] as String),
      accessGroupType: pulumi.Input.fromValue(map['accessGroupType'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      mountTargetCount: pulumi.Input.fromValue(map['mountTargetCount'] as int),
      ruleCount: pulumi.Input.fromValue(map['ruleCount'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

