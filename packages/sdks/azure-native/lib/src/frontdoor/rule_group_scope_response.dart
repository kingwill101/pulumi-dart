// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_scope_response.dart';

/// Defines the scope of the rule group.
class RuleGroupScopeResponse {
  /// Defines the rule group name.
  final pulumi.Input<String> ruleGroupName;
  /// List of rule scopes.
  final pulumi.Input<List<RuleScopeResponse>?>? ruleScopes;

  /// Creates a new [RuleGroupScopeResponse].
  /// [ruleGroupName] Defines the rule group name.
  /// [ruleScopes] List of rule scopes.
  const RuleGroupScopeResponse({
    required this.ruleGroupName,
    this.ruleScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'ruleScopes': ?pulumi.Input.mapOptionalInputValue<List<RuleScopeResponse>, List<Map<String, dynamic>>>(ruleScopes, (value) => pulumi.Input.encodeList<RuleScopeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupScopeResponse.fromMap(Map<String, dynamic> map) {
    return RuleGroupScopeResponse(
      ruleGroupName: pulumi.Input.fromValue(map['ruleGroupName'] as String),
      ruleScopes: (() { final guardedValue = map['ruleScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleScopeResponse>(guardedValue, (value) => RuleScopeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
