// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessRulesRule {
  /// AccessRuleId of the AccessRule.
  final pulumi.Input<String> accessRuleId;
  /// Priority of the AccessRule.
  final pulumi.Input<int> priority;
  /// Filter results by a specific RWAccess.
  final pulumi.Input<String> rwAccess;
  /// Filter results by a specific SourceCidrIp.
  final pulumi.Input<String> sourceCidrIp;
  /// Filter results by a specific UserAccess.
  final pulumi.Input<String> userAccess;

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
      accessRuleId: pulumi.Input.fromValue(map['accessRuleId'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      rwAccess: pulumi.Input.fromValue(map['rwAccess'] as String),
      sourceCidrIp: pulumi.Input.fromValue(map['sourceCidrIp'] as String),
      userAccess: pulumi.Input.fromValue(map['userAccess'] as String),
    );
  }
}

