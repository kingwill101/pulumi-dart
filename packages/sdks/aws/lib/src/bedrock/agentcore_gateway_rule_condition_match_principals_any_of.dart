// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_rule_condition_match_principals_any_of_iam_principal.dart';

class AgentcoreGatewayRuleConditionMatchPrincipalsAnyOf {
  /// Match an IAM user, role, or assumed-role ARN. Exactly one `iamPrincipal` block is required per entry.
  final pulumi.Input<AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipal> iamPrincipal;

  /// Creates a new [AgentcoreGatewayRuleConditionMatchPrincipalsAnyOf].
  /// [iamPrincipal] Match an IAM user, role, or assumed-role ARN. Exactly one `iamPrincipal` block is required per entry.
  const AgentcoreGatewayRuleConditionMatchPrincipalsAnyOf({
    required this.iamPrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamPrincipal': pulumi.Input.mapInputValue<AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipal, Map<String, dynamic>>(iamPrincipal, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayRuleConditionMatchPrincipalsAnyOf.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleConditionMatchPrincipalsAnyOf(
      iamPrincipal: pulumi.Input.fromValue(AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipal.fromMap((map['iamPrincipal']! as Map).cast<String, dynamic>())),
    );
  }
}
