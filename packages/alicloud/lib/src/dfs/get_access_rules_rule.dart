// ignore_for_file: unused_element, unnecessary_cast


class GetAccessRulesRule {
  /// The resource ID of the Access Group.
  final String accessGroupId;
  /// The ID of the Access Rule.
  final String accessRuleId;
  /// The created time of the Access Rule.
  final String createTime;
  /// The description of the Access Rule.
  final String description;
  /// The resource ID of Access Rule.
  final String id;
  /// The NetworkSegment of the Access Rule.
  final String networkSegment;
  /// The priority of the Access Rule.
  final int priority;
  /// RWAccessType of the Access Rule. Valid values: `RDONLY`, `RDWR`.
  final String rwAccessType;

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
      accessGroupId: map['accessGroupId'] as String,
      accessRuleId: map['accessRuleId'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      networkSegment: map['networkSegment'] as String,
      priority: map['priority'] as int,
      rwAccessType: map['rwAccessType'] as String,
    );
  }
}

