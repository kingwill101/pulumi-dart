// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_rule_condition_match_principals_any_of.dart';

class AgentcoreGatewayRuleConditionMatchPrincipals {
  /// Between 1 and 100 principal entry blocks.
  final pulumi.Input<List<AgentcoreGatewayRuleConditionMatchPrincipalsAnyOf>?>? anyOfs;

  /// Creates a new [AgentcoreGatewayRuleConditionMatchPrincipals].
  /// [anyOfs] Between 1 and 100 principal entry blocks.
  const AgentcoreGatewayRuleConditionMatchPrincipals({
    this.anyOfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anyOfs': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayRuleConditionMatchPrincipalsAnyOf>, List<Map<String, dynamic>>>(anyOfs, (value) => pulumi.Input.encodeList<AgentcoreGatewayRuleConditionMatchPrincipalsAnyOf, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreGatewayRuleConditionMatchPrincipals.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleConditionMatchPrincipals(
      anyOfs: (() { final guardedValue = map['anyOfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayRuleConditionMatchPrincipalsAnyOf>(guardedValue, (value) => AgentcoreGatewayRuleConditionMatchPrincipalsAnyOf.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
