// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayRuleConditionMatchPaths {
  /// Between 1 and 100 principal entry blocks.
  final pulumi.Input<List<String>> anyOfs;

  /// Creates a new [AgentcoreGatewayRuleConditionMatchPaths].
  /// [anyOfs] Between 1 and 100 principal entry blocks.
  const AgentcoreGatewayRuleConditionMatchPaths({
    required this.anyOfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anyOfs': anyOfs,
    };
  }

  factory AgentcoreGatewayRuleConditionMatchPaths.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleConditionMatchPaths(
      anyOfs: pulumi.Input.fromValue((map['anyOfs'] as List).cast<String>()),
    );
  }
}
