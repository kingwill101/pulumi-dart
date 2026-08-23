// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayRuleSystem {
  /// Name of the system that manages the rule.
  final pulumi.Input<String> managedBy;

  /// Creates a new [AgentcoreGatewayRuleSystem].
  /// [managedBy] Name of the system that manages the rule.
  const AgentcoreGatewayRuleSystem({
    required this.managedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedBy': managedBy,
    };
  }

  factory AgentcoreGatewayRuleSystem.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleSystem(
      managedBy: pulumi.Input.fromValue(map['managedBy'] as String),
    );
  }
}
