// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_scope.dart';

/// Defines the scope of the managed rules.
class ManagedRuleSetScope {
  /// List of rule group scopes.
  final pulumi.Input<List<RuleGroupScope>>? ruleGroupScopes;
  /// Defines the rule set type.
  /// Examples: DefaultRuleSet, Microsoft_DefaultRuleSet,
  /// Microsoft_BotManagerRuleSet, Microsoft_HTTPDDoSRuleSet, BotProtection
  final pulumi.Input<String> ruleSetType;
  /// Defines the version of the rule set.
  final pulumi.Input<String> ruleSetVersion;

  /// Creates a new [ManagedRuleSetScope].
  /// [ruleGroupScopes] List of rule group scopes.
  /// [ruleSetType] Defines the rule set type.
  /// [ruleSetVersion] Defines the version of the rule set.
  const ManagedRuleSetScope({
    this.ruleGroupScopes,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupScopes': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupScope>, List<Map<String, dynamic>>>(ruleGroupScopes, (value) => pulumi.Input.encodeList<RuleGroupScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ManagedRuleSetScope.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSetScope(
      ruleGroupScopes: (() { final guardedValue = map['ruleGroupScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupScope>(guardedValue, (value) => RuleGroupScope.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleSetType: pulumi.Input.fromValue(map['ruleSetType'] as String),
      ruleSetVersion: pulumi.Input.fromValue(map['ruleSetVersion'] as String),
    );
  }
}
