// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessRulesRule {
  /// The resource ID of the Access Group.
  final pulumi.Input<String> accessGroupId;

  /// The ID of the Access Rule.
  final pulumi.Input<String> accessRuleId;

  /// The created time of the Access Rule.
  final pulumi.Input<String> createTime;

  /// The description of the Access Rule.
  final pulumi.Input<String> description;

  /// The resource ID of Access Rule.
  final pulumi.Input<String> id;

  /// The NetworkSegment of the Access Rule.
  final pulumi.Input<String> networkSegment;

  /// The priority of the Access Rule.
  final pulumi.Input<int> priority;

  /// RWAccessType of the Access Rule. Valid values: `RDONLY`, `RDWR`.
  final pulumi.Input<String> rwAccessType;

  /// Creates a new [GetAccessRulesRule].
  /// [accessGroupId] The resource ID of the Access Group.
  /// [accessRuleId] The ID of the Access Rule.
  /// [createTime] The created time of the Access Rule.
  /// [description] The description of the Access Rule.
  /// [id] The resource ID of Access Rule.
  /// [networkSegment] The NetworkSegment of the Access Rule.
  /// [priority] The priority of the Access Rule.
  /// [rwAccessType] RWAccessType of the Access Rule. Valid values: `RDONLY`, `RDWR`.
  GetAccessRulesRule({
    required this.accessGroupId,
    required this.accessRuleId,
    required this.createTime,
    required this.description,
    required this.id,
    required this.networkSegment,
    required this.priority,
    required this.rwAccessType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupId': accessGroupId,
      'accessRuleId': accessRuleId,
      'createTime': createTime,
      'description': description,
      'id': id,
      'networkSegment': networkSegment,
      'priority': priority,
      'rwAccessType': rwAccessType,
    };
  }

  factory GetAccessRulesRule.fromMap(Map<String, dynamic> map) {
    return GetAccessRulesRule(
      accessGroupId: pulumi.Input.fromValue(map['accessGroupId'] as String),
      accessRuleId: pulumi.Input.fromValue(map['accessRuleId'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      networkSegment: pulumi.Input.fromValue(map['networkSegment'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      rwAccessType: pulumi.Input.fromValue(map['rwAccessType'] as String),
    );
  }
}
