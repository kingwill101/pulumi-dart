// ignore_for_file: unused_element, unnecessary_cast


class GetAccessRulesRule {
  /// AccessRuleId of the AccessRule.
  final String accessRuleId;
  /// Priority of the AccessRule.
  final int priority;
  /// Filter results by a specific RWAccess.
  final String rwAccess;
  /// Filter results by a specific SourceCidrIp.
  final String sourceCidrIp;
  /// Filter results by a specific UserAccess.
  final String userAccess;

  /// Creates a new [GetAccessRulesRule].
  /// [accessRuleId] AccessRuleId of the AccessRule.
  /// [priority] Priority of the AccessRule.
  /// [rwAccess] Filter results by a specific RWAccess.
  /// [sourceCidrIp] Filter results by a specific SourceCidrIp.
  /// [userAccess] Filter results by a specific UserAccess.
  GetAccessRulesRule({
    required this.accessRuleId,
    required this.priority,
    required this.rwAccess,
    required this.sourceCidrIp,
    required this.userAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRuleId': accessRuleId,
      'priority': priority,
      'rwAccess': rwAccess,
      'sourceCidrIp': sourceCidrIp,
      'userAccess': userAccess,
    };
  }

  factory GetAccessRulesRule.fromMap(Map<String, dynamic> map) {
    return GetAccessRulesRule(
      accessRuleId: map['accessRuleId'] as String,
      priority: map['priority'] as int,
      rwAccess: map['rwAccess'] as String,
      sourceCidrIp: map['sourceCidrIp'] as String,
      userAccess: map['userAccess'] as String,
    );
  }
}

