// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_scope.dart';

/// Defines the scope of the rule group.
class RuleGroupScope {
  /// Defines the rule group name.
  final pulumi.Input<String> ruleGroupName;
  /// List of rule scopes.
  final pulumi.Input<List<RuleScope>?>? ruleScopes;

  /// Creates a new [RuleGroupScope].
  /// [ruleGroupName] Defines the rule group name.
  /// [ruleScopes] List of rule scopes.
  const RuleGroupScope({
    required this.ruleGroupName,
    this.ruleScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'ruleScopes': ?pulumi.Input.mapOptionalInputValue<List<RuleScope>, List<Map<String, dynamic>>>(ruleScopes, (value) => pulumi.Input.encodeList<RuleScope, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupScope.fromMap(Map<String, dynamic> map) {
    return RuleGroupScope(
      ruleGroupName: pulumi.Input.fromValue(map['ruleGroupName'] as String),
      ruleScopes: (() { final guardedValue = map['ruleScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleScope>(guardedValue, (value) => RuleScope.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
