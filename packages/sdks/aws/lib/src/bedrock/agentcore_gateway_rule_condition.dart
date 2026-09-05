// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_rule_condition_match_paths.dart';
import 'agentcore_gateway_rule_condition_match_principals.dart';

class AgentcoreGatewayRuleCondition {
  /// Match when the request path matches any of the supplied glob patterns (e.g. `/api/*`).
  final pulumi.Input<AgentcoreGatewayRuleConditionMatchPaths?>? matchPaths;
  /// Match when the caller's IAM identity matches any of the supplied principal entries.
  final pulumi.Input<AgentcoreGatewayRuleConditionMatchPrincipals?>? matchPrincipals;

  /// Creates a new [AgentcoreGatewayRuleCondition].
  /// [matchPaths] Match when the request path matches any of the supplied glob patterns (e.g. `/api/*`).
  /// [matchPrincipals] Match when the caller's IAM identity matches any of the supplied principal entries.
  const AgentcoreGatewayRuleCondition({
    this.matchPaths,
    this.matchPrincipals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchPaths': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayRuleConditionMatchPaths, Map<String, dynamic>>(matchPaths, (value) => value.toMap()),
      'matchPrincipals': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayRuleConditionMatchPrincipals, Map<String, dynamic>>(matchPrincipals, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayRuleCondition.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleCondition(
      matchPaths: (() { final guardedValue = map['matchPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayRuleConditionMatchPaths.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchPrincipals: (() { final guardedValue = map['matchPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayRuleConditionMatchPrincipals.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
