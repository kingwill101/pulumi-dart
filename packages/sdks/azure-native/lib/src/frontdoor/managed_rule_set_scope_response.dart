// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_scope_response.dart';

/// Defines the scope of the managed rules.
class ManagedRuleSetScopeResponse {
  /// List of rule group scopes.
  final pulumi.Input<List<RuleGroupScopeResponse>?>? ruleGroupScopes;
  /// Defines the rule set type.
  /// Examples: DefaultRuleSet, Microsoft_DefaultRuleSet,
  /// Microsoft_BotManagerRuleSet, Microsoft_HTTPDDoSRuleSet, BotProtection
  final pulumi.Input<String> ruleSetType;
  /// Defines the version of the rule set.
  final pulumi.Input<String> ruleSetVersion;

  /// Creates a new [ManagedRuleSetScopeResponse].
  /// [ruleGroupScopes] List of rule group scopes.
  /// [ruleSetType] Defines the rule set type.
  /// [ruleSetVersion] Defines the version of the rule set.
  const ManagedRuleSetScopeResponse({
    this.ruleGroupScopes,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupScopes': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupScopeResponse>, List<Map<String, dynamic>>>(ruleGroupScopes, (value) => pulumi.Input.encodeList<RuleGroupScopeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ManagedRuleSetScopeResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSetScopeResponse(
      ruleGroupScopes: (() { final guardedValue = map['ruleGroupScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupScopeResponse>(guardedValue, (value) => RuleGroupScopeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleSetType: pulumi.Input.fromValue(map['ruleSetType'] as String),
      ruleSetVersion: pulumi.Input.fromValue(map['ruleSetVersion'] as String),
    );
  }
}
